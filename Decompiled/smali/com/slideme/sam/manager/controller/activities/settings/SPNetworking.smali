.class public Lcom/slideme/sam/manager/controller/activities/settings/SPNetworking;
.super Landroid/preference/Preference;
.source "SPNetworking.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field public static interval2:I

.field public static maximum2:I

.field private static netconnVal:I


# instance fields
.field private monitorBox2:Landroid/widget/TextView;

.field private oldValue2:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/16 v0, 0x78

    sput v0, Lcom/slideme/sam/manager/controller/activities/settings/SPNetworking;->maximum2:I

    .line 22
    const/4 v0, 0x1

    sput v0, Lcom/slideme/sam/manager/controller/activities/settings/SPNetworking;->interval2:I

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 24
    const/high16 v0, 0x4248

    iput v0, p0, Lcom/slideme/sam/manager/controller/activities/settings/SPNetworking;->oldValue2:F

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/high16 v0, 0x4248

    iput v0, p0, Lcom/slideme/sam/manager/controller/activities/settings/SPNetworking;->oldValue2:F

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const/high16 v0, 0x4248

    iput v0, p0, Lcom/slideme/sam/manager/controller/activities/settings/SPNetworking;->oldValue2:F

    .line 39
    return-void
.end method

.method public static getNetconnVal()I
    .locals 1

    .prologue
    .line 158
    sget v0, Lcom/slideme/sam/manager/controller/activities/settings/SPNetworking;->netconnVal:I

    return v0
.end method

.method private updatePreference(I)V
    .locals 2
    .parameter "newValue"

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/settings/SPNetworking;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 153
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/settings/SPNetworking;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 154
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 155
    return-void
.end method

.method private validateValue(I)I
    .locals 2
    .parameter "value"

    .prologue
    .line 138
    sget v0, Lcom/slideme/sam/manager/controller/activities/settings/SPNetworking;->maximum2:I

    if-le p1, v0, :cond_1

    .line 139
    sget p1, Lcom/slideme/sam/manager/controller/activities/settings/SPNetworking;->maximum2:I

    .line 146
    :cond_0
    :goto_0
    return p1

    .line 140
    :cond_1
    if-gez p1, :cond_2

    .line 141
    const/4 p1, 0x0

    goto :goto_0

    .line 142
    :cond_2
    sget v0, Lcom/slideme/sam/manager/controller/activities/settings/SPNetworking;->interval2:I

    rem-int v0, p1, v0

    if-eqz v0, :cond_0

    .line 143
    int-to-float v0, p1

    sget v1, Lcom/slideme/sam/manager/controller/activities/settings/SPNetworking;->interval2:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sget v1, Lcom/slideme/sam/manager/controller/activities/settings/SPNetworking;->interval2:I

    mul-int p1, v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/slideme/sam/manager/controller/activities/settings/SPNetworking;->onCreateView(Landroid/view/ViewGroup;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/widget/LinearLayout;
    .locals 11
    .parameter "parent"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x5

    .line 44
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/settings/SPNetworking;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 46
    .local v1, layout:Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 47
    const/4 v4, -0x1

    .line 48
    const/4 v5, -0x2

    .line 46
    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 50
    .local v2, params:Landroid/widget/LinearLayout$LayoutParams;
    iput v10, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 51
    const/high16 v4, 0x3f80

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 53
    const/16 v4, 0xf

    const/16 v5, 0xa

    invoke-virtual {v1, v4, v6, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 54
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 56
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/settings/SPNetworking;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 57
    .local v3, view:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/settings/SPNetworking;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    const/high16 v4, 0x4170

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 59
    sget-object v4, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 60
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 61
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    new-instance v0, Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/settings/SPNetworking;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 65
    .local v0, bar:Landroid/widget/SeekBar;
    sget v4, Lcom/slideme/sam/manager/controller/activities/settings/SPNetworking;->maximum2:I

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 66
    iget v4, p0, Lcom/slideme/sam/manager/controller/activities/settings/SPNetworking;->oldValue2:F

    float-to-int v4, v4

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 67
    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 70
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/settings/SPNetworking;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/slideme/sam/manager/controller/activities/settings/SPNetworking;->monitorBox2:Landroid/widget/TextView;

    .line 71
    iget-object v4, p0, Lcom/slideme/sam/manager/controller/activities/settings/SPNetworking;->monitorBox2:Landroid/widget/TextView;

    const/high16 v5, 0x4160

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 72
    iget-object v4, p0, Lcom/slideme/sam/manager/controller/activities/settings/SPNetworking;->monitorBox2:Landroid/widget/TextView;

    sget-object v5, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 73
    iget-object v4, p0, Lcom/slideme/sam/manager/controller/activities/settings/SPNetworking;->monitorBox2:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    iget-object v4, p0, Lcom/slideme/sam/manager/controller/activities/settings/SPNetworking;->monitorBox2:Landroid/widget/TextView;

    invoke-virtual {v4, v9, v6, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 75
    iget-object v4, p0, Lcom/slideme/sam/manager/controller/activities/settings/SPNetworking;->monitorBox2:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/settings/SPNetworking;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0800e5

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/settings/SPNetworking;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0800e7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 78
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 80
    iget-object v4, p0, Lcom/slideme/sam/manager/controller/activities/settings/SPNetworking;->monitorBox2:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 82
    const v4, 0x1020018

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setId(I)V

    .line 84
    return-object v1
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 2
    .parameter "ta"
    .parameter "index"

    .prologue
    .line 118
    const/16 v1, 0x32

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 120
    .local v0, dValue:I
    invoke-direct {p0, v0}, Lcom/slideme/sam/manager/controller/activities/settings/SPNetworking;->validateValue(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    const-string v4, " "

    .line 90
    int-to-float v0, p2

    sget v1, Lcom/slideme/sam/manager/controller/activities/settings/SPNetworking;->interval2:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sget v1, Lcom/slideme/sam/manager/controller/activities/settings/SPNetworking;->interval2:I

    mul-int p2, v0, v1

    .line 92
    const/16 v0, 0xa

    if-ge p2, v0, :cond_0

    .line 93
    const/16 p2, 0xa

    .line 95
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/settings/SPNetworking;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    iget v0, p0, Lcom/slideme/sam/manager/controller/activities/settings/SPNetworking;->oldValue2:F

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 107
    :goto_0
    return-void

    .line 100
    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 101
    int-to-float v0, p2

    iput v0, p0, Lcom/slideme/sam/manager/controller/activities/settings/SPNetworking;->oldValue2:F

    .line 102
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/settings/SPNetworking;->monitorBox2:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/settings/SPNetworking;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0800e5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/settings/SPNetworking;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0800e7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    invoke-direct {p0, p2}, Lcom/slideme/sam/manager/controller/activities/settings/SPNetworking;->updatePreference(I)V

    .line 104
    invoke-static {}, Lcom/slideme/sam/manager/model/domain/ApplicationSettings;->getInstance()Lcom/slideme/sam/manager/model/domain/ApplicationSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/slideme/sam/manager/model/domain/ApplicationSettings;->getNetworkingSettings()Lcom/slideme/sam/manager/model/domain/ApplicationSettings$NetworkingSettings;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/slideme/sam/manager/model/domain/ApplicationSettings$NetworkingSettings;->setNetworkTimeout(I)V

    .line 105
    sput p2, Lcom/slideme/sam/manager/controller/activities/settings/SPNetworking;->netconnVal:I

    .line 106
    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/settings/SPNetworking;->notifyChanged()V

    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 2
    .parameter "restoreValue"
    .parameter "defaultValue"

    .prologue
    .line 127
    if-eqz p1, :cond_1

    const/16 v1, 0x32

    invoke-virtual {p0, v1}, Lcom/slideme/sam/manager/controller/activities/settings/SPNetworking;->getPersistedInt(I)I

    move-result v1

    move v0, v1

    .line 129
    .end local p2
    .local v0, temp:I
    :goto_0
    if-nez p1, :cond_0

    .line 130
    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/settings/SPNetworking;->persistInt(I)Z

    .line 132
    :cond_0
    int-to-float v1, v0

    iput v1, p0, Lcom/slideme/sam/manager/controller/activities/settings/SPNetworking;->oldValue2:F

    .line 133
    return-void

    .line 127
    .end local v0           #temp:I
    .restart local p2
    :cond_1
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 110
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 113
    return-void
.end method
