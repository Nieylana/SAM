.class public final Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Result;
.super Ljava/lang/Object;
.source "Purchase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/slideme/sam/manager/model/domain/purchase/Purchase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field public final purchaseStatus:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

.field public final token:Ljava/lang/String;

.field public final transactionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;Ljava/lang/String;)V
    .locals 0
    .parameter "transactionId"
    .parameter "purchaseStatus"
    .parameter "token"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Result;->transactionId:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Result;->purchaseStatus:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    .line 65
    iput-object p3, p0, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Result;->token:Ljava/lang/String;

    .line 66
    return-void
.end method
