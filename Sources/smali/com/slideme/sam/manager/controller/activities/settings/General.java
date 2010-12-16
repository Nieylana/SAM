.class public Lcom/slideme/sam/manager/controller/activities/settings/General;
.super Landroid/preference/PreferenceActivity;
.source "General.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/slideme/sam/manager/controller/activities/settings/General;Landroid/preference/ListPreference;Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/slideme/sam/manager/controller/activities/settings/General;->screenshotSummary(Landroid/preference/ListPreference;Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;I)V

    return-void
.end method

.method private screenshotSummary(Landroid/preference/ListPreference;Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;I)V
    .locals 3
    .parameter "dropdown"
    .parameter "settings"
    .parameter "screens"

    .prologue
    const-string v2, " "

    .line 67
    invoke-virtual {p2}, Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;->getXScreenshots()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const v1, 0x7f0800f1

    invoke-virtual {p0, v1}, Lcom/slideme/sam/manager/controller/activities/settings/General;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0800c1

    invoke-virtual {p0, v1}, Lcom/slideme/sam/manager/controller/activities/settings/General;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 79
    :goto_0
    return-void

    .line 69
    :pswitch_0
    const v0, 0x7f0800ef

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/settings/General;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 72
    :pswitch_1
    const v0, 0x7f0800f0

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/settings/General;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const v3, 0x7f030028

    invoke-virtual {p0, v3}, Lcom/slideme/sam/manager/controller/activities/settings/General;->addPreferencesFromResource(I)V

    .line 22
    invoke-static {}, Lcom/slideme/sam/manager/SAM;->getSettings()Lcom/slideme/sam/manager/model/domain/ApplicationSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/slideme/sam/manager/model/domain/ApplicationSettings;->getGeneralSettings()Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;

    move-result-object v1

    .line 37
    .local v1, general:Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;
    const v3, 0x7f080005

    invoke-virtual {p0, v3}, Lcom/slideme/sam/manager/controller/activities/settings/General;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/slideme/sam/manager/controller/activities/settings/General;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 39
    .local v0, freeapps:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v1}, Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;->getFreeApps()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 40
    new-instance v3, Lcom/slideme/sam/manager/controller/activities/settings/General$1;

    invoke-direct {v3, p0, v1}, Lcom/slideme/sam/manager/controller/activities/settings/General$1;-><init>(Lcom/slideme/sam/manager/controller/activities/settings/General;Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;)V

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 50
    const v3, 0x7f080006

    invoke-virtual {p0, v3}, Lcom/slideme/sam/manager/controller/activities/settings/General;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/slideme/sam/manager/controller/activities/settings/General;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    .line 52
    .local v2, xscreenshots:Landroid/preference/ListPreference;
    invoke-virtual {v1}, Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;->getXScreenshots()I

    move-result v3

    invoke-direct {p0, v2, v1, v3}, Lcom/slideme/sam/manager/controller/activities/settings/General;->screenshotSummary(Landroid/preference/ListPreference;Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;I)V

    .line 54
    new-instance v3, Lcom/slideme/sam/manager/controller/activities/settings/General$2;

    invoke-direct {v3, p0, v1, v2}, Lcom/slideme/sam/manager/controller/activities/settings/General$2;-><init>(Lcom/slideme/sam/manager/controller/activities/settings/General;Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;Landroid/preference/ListPreference;)V

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 64
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 84
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/settings/General;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 89
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 90
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 91
    return-void
.end method
