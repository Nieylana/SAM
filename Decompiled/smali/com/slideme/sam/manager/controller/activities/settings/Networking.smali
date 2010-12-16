.class public Lcom/slideme/sam/manager/controller/activities/settings/Networking;
.super Landroid/preference/PreferenceActivity;
.source "Networking.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 12
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    const v0, 0x7f03002a

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/settings/Networking;->addPreferencesFromResource(I)V

    .line 14
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 18
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 19
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/slideme/sam/manager/controller/activities/settings/Networking;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 25
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 26
    return-void
.end method
