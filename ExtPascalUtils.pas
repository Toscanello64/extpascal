unit ExtPascalUtils;

interface

uses
  Classes;

{$IF Defined(FPC) or (RTLVersion <= 17)}
type
  TStringList = class(Classes.TStringList)
  private
    function GetDelimitedText : string;
    procedure SetDelimitedText(const AValue : string);
  public
    StrictDelimiter : boolean;
    property DelimitedText : string read GetDelimitedText write SetDelimitedText;
  end;
{$IFEND}

// Mimics preg_match php function
function Extract(Delims : array of string; S : string; var Matches : TStringList) : boolean;
// Mimics explode php function
function Explode(Delim : char; S : string) : TStringList;
// Opposite of LastDelimiter VCL function
function FirstDelimiter(Delimiters, S : string; Offset : integer = 1) : integer;

implementation

uses
  StrUtils, SysUtils;

{$IF Defined(FPC) or (RTLVersion <= 17)}
function TStringList.GetDelimitedText: string;
var
  I : integer;
  P : pchar;
begin
  {$IFDEF FPC}CheckSpecialChars;{$ENDIF}
  Result := '';
  for I := 0 to Count-1 do begin
    P := pchar(Strings[I]);
    if not StrictDelimiter then
      while not(P^ in [#0..' ', QuoteChar, Delimiter]) do inc(P)
    else
      while not(P^ in [QuoteChar, Delimiter]) do inc(P);
    // strings in list may to contain #0
    if P <> (pchar(Strings[I]) + length(Strings[I])) then
      Result := Result + QuoteChar + Strings[I] + QuoteChar
    else
      Result := Result + Strings[I];
    if I < Count-1 then Result := Result + Delimiter;
  end;
  if (length(Result) = 0) and (Count = 1) then Result := QuoteChar + QuoteChar;
end;

procedure TStringList.SetDelimitedText(const AValue : string);
var
  I, J : integer;
  aNotFirst : boolean;
begin
  {$IFDEF FPC}CheckSpecialChars;{$ENDIF}
  BeginUpdate;
  I := 1;
  aNotFirst := false;
  try
    Clear;
    while I <= length(AValue) do begin
      // skip delimiter
      if aNotFirst and (I <= length(AValue)) and (AValue[I] = Delimiter) then inc(I);
      // skip spaces
      if not StrictDelimiter then
        while (I <= length(AValue)) and (ord(AValue[I]) <= ord(' ')) do inc(I);
      // read next string
      if I <= length(AValue) then begin
        if AValue[I] = QuoteChar then begin
          // next string is quoted
          J := I + 1;
          while (J <= length(AValue)) and ((AValue[J] <> QuoteChar) or
             ((J+1 <= length(AValue)) and (AValue[J+1] = QuoteChar))) do
            if (J <= length(AValue)) and (AValue[J] = QuoteChar) then
              inc(J, 2)
            else
              inc(J);
          // J is position of closing quote
          Add(StringReplace(Copy(AValue, I+1, J-I-1), QuoteChar + QuoteChar, QuoteChar, [rfReplaceAll]));
          I := J + 1;
        end
        else begin
          // next string is not quoted
          J := I;
          if not StrictDelimiter then
            while (J <= length(AValue)) and (ord(AValue[J]) > ord(' ')) and (AValue[J] <> Delimiter) do inc(J)
          else
            while (J <= length(AValue)) and (AValue[J] <> Delimiter) do inc(J);
          Add(copy(AValue, I, J-i));
          I := J;
        end;
      end
      else
        if aNotFirst then Add('');
      // skip spaces
      if not StrictDelimiter then
        while (I <= length(AValue)) and (ord(AValue[I]) <= ord(' ')) do inc(I);
      aNotFirst:=true;
    end;
  finally
    EndUpdate;
  end;
end;
{$IFEND}

function Extract(Delims : array of string; S : string; var Matches : TStringList) : boolean;
var
  I, J : integer;
begin
  Result := false;
  if Matches <> nil then Matches.Clear;
  J := 1;
  for I := 0 to high(Delims) do begin
    J := posex(Delims[I], S, J);
    if J = 0 then
      exit
    else
      inc(J, length(Delims[I]));
  end;
  J := 1;
  for I := 0 to high(Delims)-1 do begin
    J := posex(Delims[I], S, J);
    inc(J, length(Delims[I]));
    Matches.Add(trim(copy(S, J, posex(Delims[I+1], S, J)-J)));
  end;
  Result := true
end;

function Explode(Delim : char; S : string) : TStringList;
var
  I : integer;
begin
  Result := TStringList.Create;
  Result.StrictDelimiter := true;
  Result.Delimiter := Delim;
  Result.DelimitedText := S;
  for I := 0 to Result.Count-1 do Result[I] := trim(Result[I]);
end;

function FirstDelimiter(Delimiters, S : string; Offset : integer = 1) : integer;
var
  I : integer;
begin
  for Result := Offset to length(S) do
    for I := 1 to length(Delimiters) do
      if Delimiters[I] = S[Result] then exit;
  Result := 0;
end;

end.
