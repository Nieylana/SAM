.class Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$3;
.super Ljava/lang/Object;
.source "TermsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;


# direct methods
.method constructor <init>(Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$3;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity$3;->this$0:Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;

    invoke-virtual {v0}, Lcom/slideme/sam/manager/controller/activities/bundle/TermsActivity;->finish()V

    .line 259
    return-void
.end method
