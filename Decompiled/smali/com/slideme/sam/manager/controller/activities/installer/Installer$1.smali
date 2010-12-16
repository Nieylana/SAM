.class Lcom/slideme/sam/manager/controller/activities/installer/Installer$1;
.super Ljava/lang/Object;
.source "Installer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/slideme/sam/manager/controller/activities/installer/Installer;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/slideme/sam/manager/controller/activities/installer/Installer;


# direct methods
.method constructor <init>(Lcom/slideme/sam/manager/controller/activities/installer/Installer;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/slideme/sam/manager/controller/activities/installer/Installer$1;->this$0:Lcom/slideme/sam/manager/controller/activities/installer/Installer;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 44
    packed-switch p2, :pswitch_data_0

    .line 56
    :goto_0
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/installer/Installer$1;->this$0:Lcom/slideme/sam/manager/controller/activities/installer/Installer;

    invoke-static {v0}, Lcom/slideme/sam/manager/controller/activities/installer/Installer;->access$1(Lcom/slideme/sam/manager/controller/activities/installer/Installer;)Lcom/slideme/sam/manager/controller/activities/installer/Installer$EfficientAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/slideme/sam/manager/controller/activities/installer/Installer$EfficientAdapter;->notifyDataSetChanged()V

    .line 57
    if-eqz p1, :cond_0

    .line 58
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 59
    :cond_0
    return-void

    .line 46
    :pswitch_0
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/installer/Installer$1;->this$0:Lcom/slideme/sam/manager/controller/activities/installer/Installer;

    invoke-static {v0}, Lcom/slideme/sam/manager/controller/activities/installer/Installer;->access$0(Lcom/slideme/sam/manager/controller/activities/installer/Installer;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/slideme/sam/manager/model/installer/AZComparator;

    invoke-direct {v1}, Lcom/slideme/sam/manager/model/installer/AZComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 49
    :pswitch_1
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/installer/Installer$1;->this$0:Lcom/slideme/sam/manager/controller/activities/installer/Installer;

    invoke-static {v0}, Lcom/slideme/sam/manager/controller/activities/installer/Installer;->access$0(Lcom/slideme/sam/manager/controller/activities/installer/Installer;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/slideme/sam/manager/model/installer/DateComparator;

    invoke-direct {v1}, Lcom/slideme/sam/manager/model/installer/DateComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 52
    :pswitch_2
    iget-object v0, p0, Lcom/slideme/sam/manager/controller/activities/installer/Installer$1;->this$0:Lcom/slideme/sam/manager/controller/activities/installer/Installer;

    invoke-static {v0}, Lcom/slideme/sam/manager/controller/activities/installer/Installer;->access$0(Lcom/slideme/sam/manager/controller/activities/installer/Installer;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/slideme/sam/manager/model/installer/SizeComparator;

    invoke-direct {v1}, Lcom/slideme/sam/manager/model/installer/SizeComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
