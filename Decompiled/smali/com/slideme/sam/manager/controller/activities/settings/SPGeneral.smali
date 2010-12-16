.class public Lcom/slideme/sam/manager/controller/activities/settings/SPGeneral;
.super Landroid/preference/Preference;
.source "SPGeneral.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field public static interval:I

.field public static maximum:I


# instance fields
.field private monitorBox:Landroid/widget/TextView;

.field private oldValue:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/16 v0, 0x64

    sput v0, Lcom/slideme/sam/manager/controller/activities/settings/SPGeneral;->maximum:I

    .line 23
    const/4 v0, 0x1

    sput v0, Lcom/slideme/sam/manager/controller/activities/settings/SPGeneral;->interval:I

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 25
    const/high16 v0, 0x41f0

    iput v0, p0, Lcom/slideme/sam/manager/controller/activities/settings/SPGeneral;->oldValue:F

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/high16 v0, 0x41f0

    iput v0, p0, Lcom/slideme/sam/manager/controller/activities/settings/SPGeneral;->oldValue:F

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const/high16 v0, 0x41f0

    iput v0, p0, Lcom/slideme/sam/manager/controller/activities/settings/SPGeneral;->oldValue:F

    .line 40
    return-void
.end method

.method private updatePreference(I)V
    .locals 2
    .parameter "newValue"

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/settings/SPGeneral;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 154
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/settings/SPGeneral;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 155
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 156
    return-void
.end method

.method private validateValue(I)I
    .locals 2
    .parameter "value"

    .prologue
    .line 140
    sget v0, Lcom/slideme/sam/manager/controller/activities/settings/SPGeneral;->maximum:I

    if-le p1, v0, :cond_1

    .line 141
    sget p1, Lcom/slideme/sam/manager/controller/activities/settings/SPGeneral;->maximum:I

    .line 147
    :cond_0
    :goto_0
    return p1

    .line 142
    :cond_1
    if-gez p1, :cond_2

    .line 143
    const/4 p1, 0x0

    goto :goto_0

    .line 144
    :cond_2
    sget v0, Lcom/slideme/sam/manager/controller/activities/settings/SPGeneral;->interval:I

    rem-int v0, p1, v0

    if-eqz v0, :cond_0

    .line 145
    int-to-float v0, p1

    sget v1, Lcom/slideme/sam/manager/controller/activities/settings/SPGeneral;->interval:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sget v1, Lcom/slideme/sam/manager/controller/activities/settings/SPGeneral;->interval:I

    mul-int p1, v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/slideme/sam/manager/controller/activities/settings/SPGeneral;->onCreateView(Landroid/view/ViewGroup;)Landroid/widget/LinearLayout;

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

    .line 45
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/settings/SPGeneral;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 47
    .local v1, layout:Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 48
    const/4 v4, -0x1

    .line 49
    const/4 v5, -0x2

    .line 47
    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 50
    .local v2, params:Landroid/widget/LinearLayout$LayoutParams;
    iput v10, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 51
    const/high16 v4, 0x3f80

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 54
    const/16 v4, 0xf

    const/16 v5, 0xa

    invoke-virtual {v1, v4, v6, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 55
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 57
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/settings/SPGeneral;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 58
    .local v3, view:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/settings/SPGeneral;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    const/high16 v4, 0x4170

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 60
    sget-object v4, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 61
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 62
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    new-instance v0, Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/settings/SPGeneral;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 66
    .local v0, bar:Landroid/widget/SeekBar;
    sget v4, Lcom/slideme/sam/manager/controller/activities/settings/SPGeneral;->maximum:I

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 68
    iget v4, p0, Lcom/slideme/sam/manager/controller/activities/settings/SPGeneral;->oldValue:F

    float-to-int v4, v4

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 69
    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 72
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/settings/SPGeneral;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/slideme/sam/manager/controller/activities/settings/SPGeneral;->monitorBox:Landroid/widget/TextView;

    .line 73
    iget-object v4, p0, Lcom/slideme/sam/manager/controller/activities/settings/SPGeneral;->monitorBox:Landroid/widget/TextView;

    const/high16 v5, 0x4160

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 74
    iget-object v4, p0, Lcom/slideme/sam/manager/controller/activities/settings/SPGeneral;->monitorBox:Landroid/widget/TextView;

    sget-object v5, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 75
    iget-object v4, p0, Lcom/slideme/sam/manager/controller/activities/settings/SPGeneral;->monitorBox:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    iget-object v4, p0, Lcom/slideme/sam/manager/controller/activities/settings/SPGeneral;->monitorBox:Landroid/widget/TextView;

    invoke-virtual {v4, v9, v6, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 77
    iget-object v4, p0, Lcom/slideme/sam/manager/controller/activities/settings/SPGeneral;->monitorBox:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/settings/SPGeneral;->getContext()Landroid/content/Context;

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

    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/settings/SPGeneral;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0800e6

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 80
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 82
    iget-object v4, p0, Lcom/slideme/sam/manager/controller/activities/settings/SPGeneral;->monitorBox:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 84
    const v4, 0x1020018

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setId(I)V

    .line 86
    return-object v1
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 2
    .parameter "ta"
    .parameter "index"

    .prologue
    .line 120
    const/16 v1, 0x1e

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 122
    .local v0, dValue:I
    invoke-direct {p0, v0}, Lcom/slideme/sam/manager/controller/activities/settings/SPGeneral;->validateValue(I)I

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

    .line 92
    int-to-float v0, p2

    sget v1, Lcom/slideme/sam/manager/controller/activities/settings/SPGeneral;->interval:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sget v1, Lcom/slideme/sam/manager/controller/activities/settings/SPGeneral;->interval:I

    mul-int p2, v0, v1

    .line 94
    const/16 v0, 0xa

    if-ge p2, v0, :cond_0

    .line 95
    const/16 p2, 0xa

    .line 97
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/settings/SPGeneral;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    iget v0, p0, Lcom/slideme/sam/manager/controller/activities/settings/SPGeneral;->oldValue:F

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 109
    :goto_0
    return-void

    .line 102
    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 103
    int-to-float v0, p2

    iput v0, p0, Lcom/slideme/sam/manager/controller/activities/settings/SPGeneral;->oldValue:F

    .line 104
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/settings/SPGeneral;->monitorBox:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/settings/SPGeneral;->getContext()Landroid/content/Context;

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

    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/settings/SPGeneral;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0800e6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    invoke-direct {p0, p2}, Lcom/slideme/sam/manager/controller/activities/settings/SPGeneral;->updatePreference(I)V

    .line 106
    invoke-static {}, Lcom/slideme/sam/manager/model/domain/ApplicationSettings;->getInstance()Lcom/slideme/sam/manager/model/domain/ApplicationSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/slideme/sam/manager/model/domain/ApplicationSettings;->getGeneralSettings()Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;->setAppsPerPage(I)V

    .line 108
    invoke-virtual {p0}, Lcom/slideme/sam/manager/controller/activities/settings/SPGeneral;->notifyChanged()V

    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 2
    .parameter "restoreValue"
    .parameter "defaultValue"

    .prologue
    .line 129
    if-eqz p1, :cond_1

    const/16 v1, 0x1e

    invoke-virtual {p0, v1}, Lcom/slideme/sam/manager/controller/activities/settings/SPGeneral;->getPersistedInt(I)I

    move-result v1

    move v0, v1

    .line 131
    .end local p2
    .local v0, temp:I
    :goto_0
    if-nez p1, :cond_0

    .line 132
    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/settings/SPGeneral;->persistInt(I)Z

    .line 134
    :cond_0
    int-to-float v1, v0

    iput v1, p0, Lcom/slideme/sam/manager/controller/activities/settings/SPGeneral;->oldValue:F

    .line 135
    return-void

    .line 129
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
    .line 112
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 115
    return-void
.end method
