.class Lcom/slideme/sam/manager/controller/activities/SplashActivity$6;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/slideme/sam/manager/controller/activities/SplashActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/slideme/sam/manager/controller/activities/SplashActivity;


# direct methods
.method constructor <init>(Lcom/slideme/sam/manager/controller/activities/SplashActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/SplashActivity$6;->this$0:Lcom/slideme/sam/manager/controller/activities/SplashActivity;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/SplashActivity$6;->this$0:Lcom/slideme/sam/manager/controller/activities/SplashActivity;

    invoke-virtual {v0}, Lcom/slideme/sam/manager/controller/activities/SplashActivity;->finish()V

    .line 152
    return-void
.end method
