.class Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$2;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;


# direct methods
.method constructor <init>(Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$2;->this$0:Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity$2;->this$0:Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;

    invoke-virtual {v0}, Lcom/slideme/sam/manager/controller/activities/login/LoginActivity;->finish()V

    .line 86
    return-void
.end method
