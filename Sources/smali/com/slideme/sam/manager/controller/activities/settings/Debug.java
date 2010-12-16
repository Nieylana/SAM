.class public Lcom/slideme/sam/manager/controller/activities/settings/Debug;
.super Landroid/preference/PreferenceActivity;
.source "Debug.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const v2, 0x7f030027

    invoke-virtual {p0, v2}, Lcom/slideme/sam/manager/controller/activities/settings/Debug;->addPreferencesFromResource(I)V

    .line 22
    invoke-static {}, Lcom/slideme/sam/manager/SAM;->getSettings()Lcom/slideme/sam/manager/model/domain/ApplicationSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/slideme/sam/manager/model/domain/ApplicationSettings;->getDebugSettings()Lcom/slideme/sam/manager/model/domain/ApplicationSettings$DebugSettings;

    move-result-object v0

    .line 33
    .local v0, debug:Lcom/slideme/sam/manager/model/domain/ApplicationSettings$DebugSettings;
    const v2, 0x7f080001

    invoke-virtual {p0, v2}, Lcom/slideme/sam/manager/controller/activities/settings/Debug;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/slideme/sam/manager/controller/activities/settings/Debug;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 35
    .local v1, reporting:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0}, Lcom/slideme/sam/manager/model/domain/ApplicationSettings$DebugSettings;->getBugReporting()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 36
    new-instance v2, Lcom/slideme/sam/manager/controller/activities/settings/Debug$1;

    invoke-direct {v2, p0, v0}, Lcom/slideme/sam/manager/controller/activities/settings/Debug$1;-><init>(Lcom/slideme/sam/manager/controller/activities/settings/Debug;Lcom/slideme/sam/manager/model/domain/ApplicationSettings$DebugSettings;)V

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 44
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 49
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/settings/Debug;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 55
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 56
    return-void
.end method
