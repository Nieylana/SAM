.class Lcom/slideme/sam/manager/controller/activities/settings/General$2;
.super Ljava/lang/Object;
.source "General.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/slideme/sam/manager/controller/activities/settings/General;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/slideme/sam/manager/controller/activities/settings/General;

.field private final synthetic val$general:Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;

.field private final synthetic val$xscreenshots:Landroid/preference/ListPreference;


# direct methods
.method constructor <init>(Lcom/slideme/sam/manager/controller/activities/settings/General;Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;Landroid/preference/ListPreference;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/settings/General$2;->this$0:Lcom/slideme/sam/manager/controller/activities/settings/General;

    iput-object p2, p0, Lcom/slideme/sam/manager/controller/activities/settings/General$2;->val$general:Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;

    iput-object p3, p0, Lcom/slideme/sam/manager/controller/activities/settings/General$2;->val$xscreenshots:Landroid/preference/ListPreference;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "o"

    .prologue
    .line 56
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, newVal:Ljava/lang/String;
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/settings/General$2;->val$general:Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;->setXScreenshots(I)V

    .line 59
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/settings/General$2;->this$0:Lcom/slideme/sam/manager/controller/activities/settings/General;

    iget-object v2, p0, Lcom/slideme/sam/manager/controller/activities/settings/General$2;->val$xscreenshots:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/slideme/sam/manager/controller/activities/settings/General$2;->val$general:Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;

    iget-object v4, p0, Lcom/slideme/sam/manager/controller/activities/settings/General$2;->val$general:Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;

    invoke-virtual {v4}, Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;->getXScreenshots()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/slideme/sam/manager/controller/activities/settings/General;->access$0(Lcom/slideme/sam/manager/controller/activities/settings/General;Landroid/preference/ListPreference;Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;I)V

    .line 60
    const/4 v1, 0x1

    return v1
.end method
