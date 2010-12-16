.class Lcom/slideme/sam/manager/controller/activities/settings/General$1;
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


# direct methods
.method constructor <init>(Lcom/slideme/sam/manager/controller/activities/settings/General;Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/settings/General$1;->this$0:Lcom/slideme/sam/manager/controller/activities/settings/General;

    iput-object p2, p0, Lcom/slideme/sam/manager/controller/activities/settings/General$1;->val$general:Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "preference"
    .parameter "o"

    .prologue
    .line 43
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 44
    .local v0, newVal:Z
    iget-object v1, p0, Lcom/slideme/sam/manager/controller/activities/settings/General$1;->val$general:Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;

    invoke-virtual {v1, v0}, Lcom/slideme/sam/manager/model/domain/ApplicationSettings$GeneralSettings;->setFreeApps(Z)V

    .line 45
    const/4 v1, 0x1

    return v1
.end method
