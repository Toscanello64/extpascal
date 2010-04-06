unit ExtChart;

// Generated by ExtToPascal v.0.9.8, at 6/4/2010 15:59:49
// from "C:\Trabalho\ext\docs\output" detected as ExtJS v.3

interface

uses
  StrUtils, ExtPascal, ExtPascalUtils, Ext, ExtData;

type
  TExtChartStyle = class;
  TExtChartSeries = class;
  TExtChartSeriesStyle = class;
  TExtChartAxis = class;
  TExtChartNumericAxis = class;
  TExtChartTimeAxis = class;
  TExtChartPieSeries = class;
  TExtChartCartesianSeries = class;
  TExtChartCategoryAxis = class;
  TExtChartLineSeries = class;
  TExtChartBarSeries = class;
  TExtChartColumnSeries = class;
  TExtChartChart = class;
  TExtChartCartesianChart = class;
  TExtChartPieChart = class;
  TExtChartStackedColumnChart = class;
  TExtChartColumnChart = class;
  TExtChartBarChart = class;
  TExtChartStackedBarChart = class;
  TExtChartLineChart = class;

  TExtChartStyle = class(TExtFunction)
  private
    FPadding : Integer;
    FAnimationEnabled : Boolean;
    FFont : TExtFont;
    FDataTip : TExtDataTip;
    procedure SetFPadding(Value : Integer);
    procedure SetFAnimationEnabled(Value : Boolean);
    procedure SetFFont(Value : TExtFont);
    procedure SetFDataTip(Value : TExtDataTip);
  public
    function JSClassName : string; override;
    {$IFDEF FPC}constructor AddTo(List : TExtObjectList);{$ENDIF}
    property Padding : Integer read FPadding write SetFPadding;
    property AnimationEnabled : Boolean read FAnimationEnabled write SetFAnimationEnabled;
    property Font : TExtFont read FFont write SetFFont;
    property DataTip : TExtDataTip read FDataTip write SetFDataTip;
  end;

  TExtChartSeries = class(TExtFunction)
  private
    FDisplayName : String;
    FTypeJS : String;
    FStyle : TExtChartSeriesStyle;
    procedure SetFDisplayName(Value : String);
    procedure SetFTypeJS(Value : String);
    procedure SetFStyle(Value : TExtChartSeriesStyle);
  public
    function JSClassName : string; override;
    {$IFDEF FPC}constructor AddTo(List : TExtObjectList);{$ENDIF}
    property DisplayName : String read FDisplayName write SetFDisplayName;
    property TypeJS : String read FTypeJS write SetFTypeJS;
    property Style : TExtChartSeriesStyle read FStyle write SetFStyle;
  end;

  TExtChartSeriesStyle = class(TExtFunction)
  private
    FImage : String;
    FMode : String;
    FColor : String;
    procedure SetFImage(Value : String);
    procedure SetFMode(Value : String);
    procedure SetFColor(Value : String);
  public
    function JSClassName : string; override;
    {$IFDEF FPC}constructor AddTo(List : TExtObjectList);{$ENDIF}
    property Image : String read FImage write SetFImage;
    property Mode : String read FMode write SetFMode;
    property Color : String read FColor write SetFColor;
  end;

  TExtChartAxis = class(TExtFunction)
  private
    FHideOverlappingLabels : Boolean;
    FLabelFunction : String;
    FLabelSpacing : Integer;
    FOrientation : String;
    FReverse : Boolean;
    FTypeJS : String;
    FDisplayName : String;
    FLabelRenderer : TExtFunction;
    FTitle : String;
    procedure SetFHideOverlappingLabels(Value : Boolean);
    procedure SetFLabelFunction(Value : String);
    procedure SetFLabelSpacing(Value : Integer);
    procedure SetFOrientation(Value : String);
    procedure SetFReverse(Value : Boolean);
    procedure SetFTypeJS(Value : String);
    procedure SetFDisplayName(Value : String);
    procedure SetFLabelRenderer(Value : TExtFunction);
    procedure SetFTitle(Value : String);
  public
    function JSClassName : string; override;
    {$IFDEF FPC}constructor AddTo(List : TExtObjectList);{$ENDIF}
    property HideOverlappingLabels : Boolean read FHideOverlappingLabels write SetFHideOverlappingLabels;
    property LabelFunction : String read FLabelFunction write SetFLabelFunction;
    property LabelSpacing : Integer read FLabelSpacing write SetFLabelSpacing;
    property Orientation : String read FOrientation write SetFOrientation;
    property Reverse : Boolean read FReverse write SetFReverse;
    property TypeJS : String read FTypeJS write SetFTypeJS;
    property DisplayName : String read FDisplayName write SetFDisplayName;
    property LabelRenderer : TExtFunction read FLabelRenderer write SetFLabelRenderer;
    property Title : String read FTitle write SetFTitle;
  end;

  TExtChartNumericAxis = class(TExtChartAxis)
  private
    FAdjustMaximumByMajorUnit : Boolean;
    FAdjustMinimumByMajorUnit : Boolean;
    FAlwaysShowZero : Boolean;
    FCalculateByLabelSize : Boolean;
    FMajorUnit : Integer;
    FMaximum : Integer;
    FMinimum : Integer;
    FMinorUnit : Integer;
    FPosition : String;
    FRoundMajorUnit : Boolean;
    FScale : String;
    FSnapToUnits : Boolean;
    procedure SetFAdjustMaximumByMajorUnit(Value : Boolean);
    procedure SetFAdjustMinimumByMajorUnit(Value : Boolean);
    procedure SetFAlwaysShowZero(Value : Boolean);
    procedure SetFCalculateByLabelSize(Value : Boolean);
    procedure SetFMajorUnit(Value : Integer);
    procedure SetFMaximum(Value : Integer);
    procedure SetFMinimum(Value : Integer);
    procedure SetFMinorUnit(Value : Integer);
    procedure SetFPosition(Value : String);
    procedure SetFRoundMajorUnit(Value : Boolean);
    procedure SetFScale(Value : String);
    procedure SetFSnapToUnits(Value : Boolean);
  public
    function JSClassName : string; override;
    {$IFDEF FPC}constructor AddTo(List : TExtObjectList);{$ENDIF}
    property AdjustMaximumByMajorUnit : Boolean read FAdjustMaximumByMajorUnit write SetFAdjustMaximumByMajorUnit;
    property AdjustMinimumByMajorUnit : Boolean read FAdjustMinimumByMajorUnit write SetFAdjustMinimumByMajorUnit;
    property AlwaysShowZero : Boolean read FAlwaysShowZero write SetFAlwaysShowZero;
    property CalculateByLabelSize : Boolean read FCalculateByLabelSize write SetFCalculateByLabelSize;
    property MajorUnit : Integer read FMajorUnit write SetFMajorUnit;
    property Maximum : Integer read FMaximum write SetFMaximum;
    property Minimum : Integer read FMinimum write SetFMinimum;
    property MinorUnit : Integer read FMinorUnit write SetFMinorUnit;
    property Position : String read FPosition write SetFPosition;
    property RoundMajorUnit : Boolean read FRoundMajorUnit write SetFRoundMajorUnit;
    property Scale : String read FScale write SetFScale;
    property SnapToUnits : Boolean read FSnapToUnits write SetFSnapToUnits;
  end;

  TExtChartTimeAxis = class(TExtChartAxis)
  private
    FCalculateByLabelSize : Boolean;
    FMajorTimeUnit : String;
    FMajorTimeUnit_ : String;
    FMajorUnit : Integer;
    FMajorUnit_ : Integer;
    FMaximum : Integer;
    FMinimum : TDateTime;
    FSnapToUnits : Boolean;
    FStackingEnabled : Boolean;
    procedure SetFCalculateByLabelSize(Value : Boolean);
    procedure SetFMajorTimeUnit(Value : String);
    procedure SetFMajorTimeUnit_(Value : String);
    procedure SetFMajorUnit(Value : Integer);
    procedure SetFMajorUnit_(Value : Integer);
    procedure SetFMaximum(Value : Integer);
    procedure SetFMinimum(Value : TDateTime);
    procedure SetFSnapToUnits(Value : Boolean);
    procedure SetFStackingEnabled(Value : Boolean);
  public
    function JSClassName : string; override;
    {$IFDEF FPC}constructor AddTo(List : TExtObjectList);{$ENDIF}
    property CalculateByLabelSize : Boolean read FCalculateByLabelSize write SetFCalculateByLabelSize;
    property MajorTimeUnit : String read FMajorTimeUnit write SetFMajorTimeUnit;
    property MajorTimeUnit_ : String read FMajorTimeUnit_ write SetFMajorTimeUnit_;
    property MajorUnit : Integer read FMajorUnit write SetFMajorUnit;
    property MajorUnit_ : Integer read FMajorUnit_ write SetFMajorUnit_;
    property Maximum : Integer read FMaximum write SetFMaximum;
    property Minimum : TDateTime read FMinimum write SetFMinimum;
    property SnapToUnits : Boolean read FSnapToUnits write SetFSnapToUnits;
    property StackingEnabled : Boolean read FStackingEnabled write SetFStackingEnabled;
  end;

  TExtChartPieSeries = class(TExtChartSeries)
  public
    function JSClassName : string; override;
    {$IFDEF FPC}constructor AddTo(List : TExtObjectList);{$ENDIF}
  end;

  TExtChartCartesianSeries = class(TExtChartSeries)
  private
    FAxis : String;
    FShowInLegend : Boolean;
    FXField : String;
    FYField : String;
    procedure SetFAxis(Value : String);
    procedure SetFShowInLegend(Value : Boolean);
    procedure SetFXField(Value : String);
    procedure SetFYField(Value : String);
  public
    function JSClassName : string; override;
    {$IFDEF FPC}constructor AddTo(List : TExtObjectList);{$ENDIF}
    property Axis : String read FAxis write SetFAxis;
    property ShowInLegend : Boolean read FShowInLegend write SetFShowInLegend;
    property XField : String read FXField write SetFXField;
    property YField : String read FYField write SetFYField;
  end;

  TExtChartCategoryAxis = class(TExtChartAxis)
  private
    FCalculateCategoryCount : Boolean;
    FCategoryNames : TExtObjectList;
    procedure SetFCalculateCategoryCount(Value : Boolean);
    procedure SetFCategoryNames(Value : TExtObjectList);
  public
    function JSClassName : string; override;
    {$IFDEF FPC}constructor AddTo(List : TExtObjectList);{$ENDIF}
    property CalculateCategoryCount : Boolean read FCalculateCategoryCount write SetFCalculateCategoryCount;
    property CategoryNames : TExtObjectList read FCategoryNames write SetFCategoryNames;
  end;

  TExtChartLineSeries = class(TExtChartCartesianSeries)
  public
    function JSClassName : string; override;
    {$IFDEF FPC}constructor AddTo(List : TExtObjectList);{$ENDIF}
  end;

  TExtChartBarSeries = class(TExtChartCartesianSeries)
  public
    function JSClassName : string; override;
    {$IFDEF FPC}constructor AddTo(List : TExtObjectList);{$ENDIF}
  end;

  TExtChartColumnSeries = class(TExtChartCartesianSeries)
  public
    function JSClassName : string; override;
    {$IFDEF FPC}constructor AddTo(List : TExtObjectList);{$ENDIF}
  end;

  // Procedural types for events TExtChartChart
  TExtChartChartOnBeforerefresh = procedure(This : TExtChartChart) of object;
  TExtChartChartOnRefresh = procedure(This : TExtChartChart) of object;

  TExtChartChart = class(TExtFlashComponent)
  private
    FChartStyle : TExtChartStyle;
    FDisableCaching : Boolean;
    FExtraStyle : TExtObject;
    FSeriesStyles : TExtObject;
    FUrl : String;
    FStore : TExtDataStore;
    FYField : String;
    FXField : String;
    FXAxis : TExtChartAxis;
    FYAxis : TExtChartAxis;
    FTipRenderer : TExtFunction;
    FSeries : TExtObjectList;
    FOnBeforerefresh : TExtChartChartOnBeforerefresh;
    FOnRefresh : TExtChartChartOnRefresh;
    procedure SetFChartStyle(Value : TExtChartStyle);
    procedure SetFDisableCaching(Value : Boolean);
    procedure SetFExtraStyle(Value : TExtObject);
    procedure SetFSeriesStyles(Value : TExtObject);
    procedure SetFUrl(Value : String);
    procedure SetFStore(Value : TExtDataStore);
    procedure SetFYField(Value : String);
    procedure SetFXField(Value : String);
    procedure SetFXAxis(Value : TExtChartAxis);
    procedure SetFYAxis(Value : TExtChartAxis);
    procedure SetFTipRenderer(Value : TExtFunction);
    procedure SetFSeries(Value : TExtObjectList);
    procedure SetFOnBeforerefresh(Value : TExtChartChartOnBeforerefresh);
    procedure SetFOnRefresh(Value : TExtChartChartOnRefresh);
  protected
    procedure InitDefaults; override;
    procedure HandleEvent(const AEvtName: string); override;
  public
    function JSClassName : string; override;
    class function CHART_URL : String;
    {$IFDEF FPC}constructor AddTo(List : TExtObjectList);{$ENDIF}
    constructor Create;
    function BindStore(Store : TExtDataStore) : TExtFunction;
    function SetSeriesStyles(Styles : TExtObjectList) : TExtFunction;
    function SetStyle(Name : String; Value : TExtObject) : TExtFunction;
    function SetStyles(Styles : TExtObject) : TExtFunction;
    destructor Destroy; override;
    property ChartStyle : TExtChartStyle read FChartStyle write SetFChartStyle;
    property DisableCaching : Boolean read FDisableCaching write SetFDisableCaching;
    property ExtraStyle : TExtObject read FExtraStyle write SetFExtraStyle;
    property SeriesStyles : TExtObject read FSeriesStyles write SetFSeriesStyles;
    property Url : String read FUrl write SetFUrl;
    property Store : TExtDataStore read FStore write SetFStore;
    property YField : String read FYField write SetFYField;
    property XField : String read FXField write SetFXField;
    property XAxis : TExtChartAxis read FXAxis write SetFXAxis;
    property YAxis : TExtChartAxis read FYAxis write SetFYAxis;
    property TipRenderer : TExtFunction read FTipRenderer write SetFTipRenderer;
    property Series : TExtObjectList read FSeries write SetFSeries;
    property OnBeforerefresh : TExtChartChartOnBeforerefresh read FOnBeforerefresh write SetFOnBeforerefresh;
    property OnRefresh : TExtChartChartOnRefresh read FOnRefresh write SetFOnRefresh;
  end;

  TExtChartCartesianChart = class(TExtChartChart)
  protected
    procedure InitDefaults; override;
  public
    function JSClassName : string; override;
    {$IFDEF FPC}constructor AddTo(List : TExtObjectList);{$ENDIF}
    constructor Create;
  end;

  TExtChartPieChart = class(TExtChartChart)
  private
    FDataField : String;
    FCategoryField : String;
    procedure SetFDataField(Value : String);
    procedure SetFCategoryField(Value : String);
  protected
    procedure InitDefaults; override;
  public
    function JSClassName : string; override;
    {$IFDEF FPC}constructor AddTo(List : TExtObjectList);{$ENDIF}
    constructor Create;
    property DataField : String read FDataField write SetFDataField;
    property CategoryField : String read FCategoryField write SetFCategoryField;
  end;

  TExtChartStackedColumnChart = class(TExtChartCartesianChart)
  protected
    procedure InitDefaults; override;
  public
    function JSClassName : string; override;
    {$IFDEF FPC}constructor AddTo(List : TExtObjectList);{$ENDIF}
    constructor Create;
  end;

  TExtChartColumnChart = class(TExtChartCartesianChart)
  protected
    procedure InitDefaults; override;
  public
    function JSClassName : string; override;
    {$IFDEF FPC}constructor AddTo(List : TExtObjectList);{$ENDIF}
    constructor Create;
  end;

  TExtChartBarChart = class(TExtChartCartesianChart)
  protected
    procedure InitDefaults; override;
  public
    function JSClassName : string; override;
    {$IFDEF FPC}constructor AddTo(List : TExtObjectList);{$ENDIF}
    constructor Create;
  end;

  TExtChartStackedBarChart = class(TExtChartCartesianChart)
  protected
    procedure InitDefaults; override;
  public
    function JSClassName : string; override;
    {$IFDEF FPC}constructor AddTo(List : TExtObjectList);{$ENDIF}
    constructor Create;
  end;

  TExtChartLineChart = class(TExtChartCartesianChart)
  protected
    procedure InitDefaults; override;
  public
    function JSClassName : string; override;
    {$IFDEF FPC}constructor AddTo(List : TExtObjectList);{$ENDIF}
    constructor Create;
  end;

implementation

procedure TExtChartStyle.SetFPadding(Value : Integer); begin
  FPadding := Value;
  JSCode('padding:' + VarToJSON([Value]));
end;

procedure TExtChartStyle.SetFAnimationEnabled(Value : Boolean); begin
  FAnimationEnabled := Value;
  JSCode('animationEnabled:' + VarToJSON([Value]));
end;

procedure TExtChartStyle.SetFFont(Value : TExtFont); begin
  FFont := Value;
  Value.DeleteFromGarbage;
  JSCode('font:' + VarToJSON([Value, false]));
end;

procedure TExtChartStyle.SetFDataTip(Value : TExtDataTip); begin
  FDataTip := Value;
  Value.DeleteFromGarbage;
  JSCode('dataTip:' + VarToJSON([Value, false]));
end;

function TExtChartStyle.JSClassName : string; begin
  Result := 'Object';
end;

{$IFDEF FPC}constructor TExtChartStyle.AddTo(List : TExtObjectList);begin inherited end;{$ENDIF}

procedure TExtChartSeries.SetFDisplayName(Value : String); begin
  FDisplayName := Value;
  JSCode(JSName + '.displayName=' + VarToJSON([Value]) + ';');
end;

procedure TExtChartSeries.SetFTypeJS(Value : String); begin
  FTypeJS := Value;
  JSCode(JSName + '.typeJS=' + VarToJSON([Value]) + ';');
end;

procedure TExtChartSeries.SetFStyle(Value : TExtChartSeriesStyle); begin
  FStyle := Value;
  Value.DeleteFromGarbage;
  JSCode('style:' + VarToJSON([Value, false]));
end;

function TExtChartSeries.JSClassName : string; begin
  Result := 'Ext.chart.Series';
end;

{$IFDEF FPC}constructor TExtChartSeries.AddTo(List : TExtObjectList);begin inherited end;{$ENDIF}

procedure TExtChartSeriesStyle.SetFImage(Value : String); begin
  FImage := Value;
  JSCode('image:' + VarToJSON([Value]));
end;

procedure TExtChartSeriesStyle.SetFMode(Value : String); begin
  FMode := Value;
  JSCode('mode:' + VarToJSON([Value]));
end;

procedure TExtChartSeriesStyle.SetFColor(Value : String); begin
  FColor := Value;
  JSCode('color:' + VarToJSON([Value]));
end;

function TExtChartSeriesStyle.JSClassName : string; begin
  Result := 'Object';
end;

{$IFDEF FPC}constructor TExtChartSeriesStyle.AddTo(List : TExtObjectList);begin inherited end;{$ENDIF}

procedure TExtChartAxis.SetFHideOverlappingLabels(Value : Boolean); begin
  FHideOverlappingLabels := Value;
  JSCode(JSName + '.hideOverlappingLabels=' + VarToJSON([Value]) + ';');
end;

procedure TExtChartAxis.SetFLabelFunction(Value : String); begin
  FLabelFunction := Value;
  JSCode(JSName + '.labelFunction=' + VarToJSON([Value]) + ';');
end;

procedure TExtChartAxis.SetFLabelSpacing(Value : Integer); begin
  FLabelSpacing := Value;
  JSCode(JSName + '.labelSpacing=' + VarToJSON([Value]) + ';');
end;

procedure TExtChartAxis.SetFOrientation(Value : String); begin
  FOrientation := Value;
  JSCode(JSName + '.orientation=' + VarToJSON([Value]) + ';');
end;

procedure TExtChartAxis.SetFReverse(Value : Boolean); begin
  FReverse := Value;
  JSCode(JSName + '.reverse=' + VarToJSON([Value]) + ';');
end;

procedure TExtChartAxis.SetFTypeJS(Value : String); begin
  FTypeJS := Value;
  JSCode(JSName + '.typeJS=' + VarToJSON([Value]) + ';');
end;

procedure TExtChartAxis.SetFDisplayName(Value : String); begin
  FDisplayName := Value;
  JSCode('displayName:' + VarToJSON([Value]));
end;

procedure TExtChartAxis.SetFLabelRenderer(Value : TExtFunction); begin
  FLabelRenderer := Value;
  JSCode('labelRenderer:' + VarToJSON([Value, true]));
end;

procedure TExtChartAxis.SetFTitle(Value : String); begin
  FTitle := Value;
  JSCode('title:' + VarToJSON([Value]));
end;

function TExtChartAxis.JSClassName : string; begin
  Result := 'Ext.chart.Axis';
end;

{$IFDEF FPC}constructor TExtChartAxis.AddTo(List : TExtObjectList);begin inherited end;{$ENDIF}

procedure TExtChartNumericAxis.SetFAdjustMaximumByMajorUnit(Value : Boolean); begin
  FAdjustMaximumByMajorUnit := Value;
  JSCode(JSName + '.adjustMaximumByMajorUnit=' + VarToJSON([Value]) + ';');
end;

procedure TExtChartNumericAxis.SetFAdjustMinimumByMajorUnit(Value : Boolean); begin
  FAdjustMinimumByMajorUnit := Value;
  JSCode(JSName + '.adjustMinimumByMajorUnit=' + VarToJSON([Value]) + ';');
end;

procedure TExtChartNumericAxis.SetFAlwaysShowZero(Value : Boolean); begin
  FAlwaysShowZero := Value;
  JSCode(JSName + '.alwaysShowZero=' + VarToJSON([Value]) + ';');
end;

procedure TExtChartNumericAxis.SetFCalculateByLabelSize(Value : Boolean); begin
  FCalculateByLabelSize := Value;
  JSCode(JSName + '.calculateByLabelSize=' + VarToJSON([Value]) + ';');
end;

procedure TExtChartNumericAxis.SetFMajorUnit(Value : Integer); begin
  FMajorUnit := Value;
  JSCode(JSName + '.majorUnit=' + VarToJSON([Value]) + ';');
end;

procedure TExtChartNumericAxis.SetFMaximum(Value : Integer); begin
  FMaximum := Value;
  JSCode(JSName + '.maximum=' + VarToJSON([Value]) + ';');
end;

procedure TExtChartNumericAxis.SetFMinimum(Value : Integer); begin
  FMinimum := Value;
  JSCode(JSName + '.minimum=' + VarToJSON([Value]) + ';');
end;

procedure TExtChartNumericAxis.SetFMinorUnit(Value : Integer); begin
  FMinorUnit := Value;
  JSCode(JSName + '.minorUnit=' + VarToJSON([Value]) + ';');
end;

procedure TExtChartNumericAxis.SetFPosition(Value : String); begin
  FPosition := Value;
  JSCode(JSName + '.position=' + VarToJSON([Value]) + ';');
end;

procedure TExtChartNumericAxis.SetFRoundMajorUnit(Value : Boolean); begin
  FRoundMajorUnit := Value;
  JSCode(JSName + '.roundMajorUnit=' + VarToJSON([Value]) + ';');
end;

procedure TExtChartNumericAxis.SetFScale(Value : String); begin
  FScale := Value;
  JSCode(JSName + '.scale=' + VarToJSON([Value]) + ';');
end;

procedure TExtChartNumericAxis.SetFSnapToUnits(Value : Boolean); begin
  FSnapToUnits := Value;
  JSCode(JSName + '.snapToUnits=' + VarToJSON([Value]) + ';');
end;

function TExtChartNumericAxis.JSClassName : string; begin
  Result := 'Ext.chart.NumericAxis';
end;

{$IFDEF FPC}constructor TExtChartNumericAxis.AddTo(List : TExtObjectList);begin inherited end;{$ENDIF}

procedure TExtChartTimeAxis.SetFCalculateByLabelSize(Value : Boolean); begin
  FCalculateByLabelSize := Value;
  JSCode(JSName + '.calculateByLabelSize=' + VarToJSON([Value]) + ';');
end;

procedure TExtChartTimeAxis.SetFMajorTimeUnit(Value : String); begin
  FMajorTimeUnit := Value;
  JSCode(JSName + '.majorTimeUnit=' + VarToJSON([Value]) + ';');
end;

procedure TExtChartTimeAxis.SetFMajorTimeUnit_(Value : String); begin
  FMajorTimeUnit_ := Value;
  JSCode(JSName + '.majorTimeUnit=' + VarToJSON([Value]) + ';');
end;

procedure TExtChartTimeAxis.SetFMajorUnit(Value : Integer); begin
  FMajorUnit := Value;
  JSCode(JSName + '.majorUnit=' + VarToJSON([Value]) + ';');
end;

procedure TExtChartTimeAxis.SetFMajorUnit_(Value : Integer); begin
  FMajorUnit_ := Value;
  JSCode(JSName + '.majorUnit=' + VarToJSON([Value]) + ';');
end;

procedure TExtChartTimeAxis.SetFMaximum(Value : Integer); begin
  FMaximum := Value;
  JSCode(JSName + '.maximum=' + VarToJSON([Value]) + ';');
end;

procedure TExtChartTimeAxis.SetFMinimum(Value : TDateTime); begin
  FMinimum := Value;
  JSCode(JSName + '.minimum=' + VarToJSON([Value]) + ';');
end;

procedure TExtChartTimeAxis.SetFSnapToUnits(Value : Boolean); begin
  FSnapToUnits := Value;
  JSCode(JSName + '.snapToUnits=' + VarToJSON([Value]) + ';');
end;

procedure TExtChartTimeAxis.SetFStackingEnabled(Value : Boolean); begin
  FStackingEnabled := Value;
  JSCode(JSName + '.stackingEnabled=' + VarToJSON([Value]) + ';');
end;

function TExtChartTimeAxis.JSClassName : string; begin
  Result := 'Ext.chart.TimeAxis';
end;

{$IFDEF FPC}constructor TExtChartTimeAxis.AddTo(List : TExtObjectList);begin inherited end;{$ENDIF}

function TExtChartPieSeries.JSClassName : string; begin
  Result := 'Ext.chart.PieSeries';
end;

{$IFDEF FPC}constructor TExtChartPieSeries.AddTo(List : TExtObjectList);begin inherited end;{$ENDIF}

procedure TExtChartCartesianSeries.SetFAxis(Value : String); begin
  FAxis := Value;
  JSCode(JSName + '.axis=' + VarToJSON([Value]) + ';');
end;

procedure TExtChartCartesianSeries.SetFShowInLegend(Value : Boolean); begin
  FShowInLegend := Value;
  JSCode(JSName + '.showInLegend=' + VarToJSON([Value]) + ';');
end;

procedure TExtChartCartesianSeries.SetFXField(Value : String); begin
  FXField := Value;
  JSCode(JSName + '.xField=' + VarToJSON([Value]) + ';');
end;

procedure TExtChartCartesianSeries.SetFYField(Value : String); begin
  FYField := Value;
  JSCode(JSName + '.yField=' + VarToJSON([Value]) + ';');
end;

function TExtChartCartesianSeries.JSClassName : string; begin
  Result := 'Ext.chart.CartesianSeries';
end;

{$IFDEF FPC}constructor TExtChartCartesianSeries.AddTo(List : TExtObjectList);begin inherited end;{$ENDIF}

procedure TExtChartCategoryAxis.SetFCalculateCategoryCount(Value : Boolean); begin
  FCalculateCategoryCount := Value;
  JSCode(JSName + '.calculateCategoryCount=' + VarToJSON([Value]) + ';');
end;

procedure TExtChartCategoryAxis.SetFCategoryNames(Value : TExtObjectList); begin
  FCategoryNames := Value;
  Value.DeleteFromGarbage;
  JSCode(JSName + '.categoryNames=' + VarToJSON([Value, false]) + ';');
end;

function TExtChartCategoryAxis.JSClassName : string; begin
  Result := 'Ext.chart.CategoryAxis';
end;

{$IFDEF FPC}constructor TExtChartCategoryAxis.AddTo(List : TExtObjectList);begin inherited end;{$ENDIF}

function TExtChartLineSeries.JSClassName : string; begin
  Result := 'Ext.chart.LineSeries';
end;

{$IFDEF FPC}constructor TExtChartLineSeries.AddTo(List : TExtObjectList);begin inherited end;{$ENDIF}

function TExtChartBarSeries.JSClassName : string; begin
  Result := 'Ext.chart.BarSeries';
end;

{$IFDEF FPC}constructor TExtChartBarSeries.AddTo(List : TExtObjectList);begin inherited end;{$ENDIF}

function TExtChartColumnSeries.JSClassName : string; begin
  Result := 'Ext.chart.ColumnSeries';
end;

{$IFDEF FPC}constructor TExtChartColumnSeries.AddTo(List : TExtObjectList);begin inherited end;{$ENDIF}

procedure TExtChartChart.SetFChartStyle(Value : TExtChartStyle); begin
  FChartStyle := Value;
  Value.DeleteFromGarbage;
  JSCode('chartStyle:' + VarToJSON([Value, false]));
end;

procedure TExtChartChart.SetFDisableCaching(Value : Boolean); begin
  FDisableCaching := Value;
  JSCode('disableCaching:' + VarToJSON([Value]));
end;

procedure TExtChartChart.SetFExtraStyle(Value : TExtObject); begin
  FExtraStyle := Value;
  Value.DeleteFromGarbage;
  JSCode('extraStyle:' + VarToJSON([Value, false]));
end;

procedure TExtChartChart.SetFSeriesStyles(Value : TExtObject); begin
  FSeriesStyles := Value;
  Value.DeleteFromGarbage;
  JSCode('seriesStyles:' + VarToJSON([Value, false]));
end;

procedure TExtChartChart.SetFUrl(Value : String); begin
  FUrl := Value;
  JSCode('url:' + VarToJSON([Value]));
end;

procedure TExtChartChart.SetFStore(Value : TExtDataStore); begin
  FStore := Value;
  Value.DeleteFromGarbage;
  JSCode('store:' + VarToJSON([Value, false]));
end;

procedure TExtChartChart.SetFYField(Value : String); begin
  FYField := Value;
  JSCode('yField:' + VarToJSON([Value]));
end;

procedure TExtChartChart.SetFXField(Value : String); begin
  FXField := Value;
  JSCode('xField:' + VarToJSON([Value]));
end;

procedure TExtChartChart.SetFXAxis(Value : TExtChartAxis); begin
  FXAxis := Value;
  Value.DeleteFromGarbage;
  JSCode('xAxis:' + VarToJSON([Value, false]));
end;

procedure TExtChartChart.SetFYAxis(Value : TExtChartAxis); begin
  FYAxis := Value;
  Value.DeleteFromGarbage;
  JSCode('yAxis:' + VarToJSON([Value, false]));
end;

procedure TExtChartChart.SetFTipRenderer(Value : TExtFunction); begin
  FTipRenderer := Value;
  JSCode('tipRenderer:' + VarToJSON([Value, true]));
end;

procedure TExtChartChart.SetFSeries(Value : TExtObjectList); begin
  FSeries := Value;
  Value.DeleteFromGarbage;
  JSCode('series:' + VarToJSON([Value, false]));
end;

procedure TExtChartChart.SetFOnBeforerefresh(Value : TExtChartChartOnBeforerefresh); begin
  if Assigned(FOnBeforerefresh) then
    JSCode(JSName+'.events ["beforerefresh"].listeners=[];');
  if Assigned(Value) then
    On('beforerefresh', Ajax('beforerefresh', ['This', '%0.nm'], true));
  FOnBeforerefresh := Value;
end;

procedure TExtChartChart.SetFOnRefresh(Value : TExtChartChartOnRefresh); begin
  if Assigned(FOnRefresh) then
    JSCode(JSName+'.events ["refresh"].listeners=[];');
  if Assigned(Value) then
    On('refresh', Ajax('refresh', ['This', '%0.nm'], true));
  FOnRefresh := Value;
end;

function TExtChartChart.JSClassName : string; begin
  Result := 'Ext.chart.Chart';
end;

class function TExtChartChart.CHART_URL : String; begin
  Result := ''
end;

procedure TExtChartChart.InitDefaults; begin
  inherited;
  FChartStyle := TExtChartStyle.CreateInternal(Self, 'chartStyle');
  FExtraStyle := TExtObject.CreateInternal(Self, 'extraStyle');
  FSeriesStyles := TExtObject.CreateInternal(Self, 'seriesStyles');
  FStore := TExtDataStore.CreateInternal(Self, 'store');
  FXAxis := TExtChartAxis.CreateInternal(Self, 'xAxis');
  FYAxis := TExtChartAxis.CreateInternal(Self, 'yAxis');
  FSeries := TExtObjectList.Create(Self, 'series');
end;

{$IFDEF FPC}constructor TExtChartChart.AddTo(List : TExtObjectList);begin inherited end;{$ENDIF}

constructor TExtChartChart.Create; begin
  CreateVar(JSClassName + '({});');
  InitDefaults;
end;

function TExtChartChart.BindStore(Store : TExtDataStore) : TExtFunction; begin
  JSCode(JSName + '.bindStore(' + VarToJSON([Store, false]) + ');', 'TExtChartChart');
  Result := Self;
end;

function TExtChartChart.SetSeriesStyles(Styles : TExtObjectList) : TExtFunction; begin
  JSCode(JSName + '.setSeriesStyles(' + VarToJSON(Styles) + ');', 'TExtChartChart');
  Result := Self;
end;

function TExtChartChart.SetStyle(Name : String; Value : TExtObject) : TExtFunction; begin
  JSCode(JSName + '.setStyle(' + VarToJSON([Name, Value, false]) + ');', 'TExtChartChart');
  Result := Self;
end;

function TExtChartChart.SetStyles(Styles : TExtObject) : TExtFunction; begin
  JSCode(JSName + '.setStyles(' + VarToJSON([Styles, false]) + ');', 'TExtChartChart');
  Result := Self;
end;

destructor TExtChartChart.Destroy; begin
  try
    FChartStyle.Free;
    FExtraStyle.Free;
    FSeriesStyles.Free;
    FStore.Free;
    FXAxis.Free;
    FYAxis.Free;
    FSeries.Free;
  except end;
  inherited;
end;

procedure TExtChartChart.HandleEvent(const AEvtName : string); begin
  inherited;
  if (AEvtName = 'beforerefresh') and Assigned(FOnBeforerefresh) then
    FOnBeforerefresh(TExtChartChart(ParamAsObject('This')))
  else if (AEvtName = 'refresh') and Assigned(FOnRefresh) then
    FOnRefresh(TExtChartChart(ParamAsObject('This')));
end;

function TExtChartCartesianChart.JSClassName : string; begin
  Result := 'Ext.chart.CartesianChart';
end;

procedure TExtChartCartesianChart.InitDefaults; begin
  inherited;
end;

{$IFDEF FPC}constructor TExtChartCartesianChart.AddTo(List : TExtObjectList);begin inherited end;{$ENDIF}

constructor TExtChartCartesianChart.Create; begin
  CreateVar(JSClassName + '({});');
  InitDefaults;
end;

procedure TExtChartPieChart.SetFDataField(Value : String); begin
  FDataField := Value;
  JSCode('dataField:' + VarToJSON([Value]));
end;

procedure TExtChartPieChart.SetFCategoryField(Value : String); begin
  FCategoryField := Value;
  JSCode('categoryField:' + VarToJSON([Value]));
end;

function TExtChartPieChart.JSClassName : string; begin
  Result := 'Ext.chart.PieChart';
end;

procedure TExtChartPieChart.InitDefaults; begin
  inherited;
end;

{$IFDEF FPC}constructor TExtChartPieChart.AddTo(List : TExtObjectList);begin inherited end;{$ENDIF}

constructor TExtChartPieChart.Create; begin
  CreateVar(JSClassName + '({});');
  InitDefaults;
end;

function TExtChartStackedColumnChart.JSClassName : string; begin
  Result := 'Ext.chart.StackedColumnChart';
end;

procedure TExtChartStackedColumnChart.InitDefaults; begin
  inherited;
end;

{$IFDEF FPC}constructor TExtChartStackedColumnChart.AddTo(List : TExtObjectList);begin inherited end;{$ENDIF}

constructor TExtChartStackedColumnChart.Create; begin
  CreateVar(JSClassName + '({});');
  InitDefaults;
end;

function TExtChartColumnChart.JSClassName : string; begin
  Result := 'Ext.chart.ColumnChart';
end;

procedure TExtChartColumnChart.InitDefaults; begin
  inherited;
end;

{$IFDEF FPC}constructor TExtChartColumnChart.AddTo(List : TExtObjectList);begin inherited end;{$ENDIF}

constructor TExtChartColumnChart.Create; begin
  CreateVar(JSClassName + '({});');
  InitDefaults;
end;

function TExtChartBarChart.JSClassName : string; begin
  Result := 'Ext.chart.BarChart';
end;

procedure TExtChartBarChart.InitDefaults; begin
  inherited;
end;

{$IFDEF FPC}constructor TExtChartBarChart.AddTo(List : TExtObjectList);begin inherited end;{$ENDIF}

constructor TExtChartBarChart.Create; begin
  CreateVar(JSClassName + '({});');
  InitDefaults;
end;

function TExtChartStackedBarChart.JSClassName : string; begin
  Result := 'Ext.chart.StackedBarChart';
end;

procedure TExtChartStackedBarChart.InitDefaults; begin
  inherited;
end;

{$IFDEF FPC}constructor TExtChartStackedBarChart.AddTo(List : TExtObjectList);begin inherited end;{$ENDIF}

constructor TExtChartStackedBarChart.Create; begin
  CreateVar(JSClassName + '({});');
  InitDefaults;
end;

function TExtChartLineChart.JSClassName : string; begin
  Result := 'Ext.chart.LineChart';
end;

procedure TExtChartLineChart.InitDefaults; begin
  inherited;
end;

{$IFDEF FPC}constructor TExtChartLineChart.AddTo(List : TExtObjectList);begin inherited end;{$ENDIF}

constructor TExtChartLineChart.Create; begin
  CreateVar(JSClassName + '({});');
  InitDefaults;
end;

end.