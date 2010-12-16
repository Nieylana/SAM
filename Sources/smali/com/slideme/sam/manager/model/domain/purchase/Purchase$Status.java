.class public final enum Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;
.super Ljava/lang/Enum;
.source "Purchase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/slideme/sam/manager/model/domain/purchase/Purchase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CANCELED:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

.field public static final enum DOWNLOADED:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

.field private static final synthetic ENUM$VALUES:[Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

.field public static final enum FAILED:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

.field public static final enum INSTALLED:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

.field public static final enum INVALID_UUID:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

.field public static final enum NULL:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

.field public static final enum OUT_OF_TOKENS:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

.field public static final enum PENDING:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

.field public static final enum PRICE_MISMATCH:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

.field public static final enum RECEIVED:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 13
    new-instance v0, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v3}, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;->PENDING:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    .line 14
    new-instance v0, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    const-string v1, "RECEIVED"

    invoke-direct {v0, v1, v4}, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;->RECEIVED:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    .line 15
    new-instance v0, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    const-string v1, "DOWNLOADED"

    invoke-direct {v0, v1, v5}, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;->DOWNLOADED:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    .line 16
    new-instance v0, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    const-string v1, "INSTALLED"

    invoke-direct {v0, v1, v6}, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;->INSTALLED:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    .line 17
    new-instance v0, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v7}, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;->FAILED:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    .line 18
    new-instance v0, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    const-string v1, "CANCELED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;->CANCELED:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    .line 19
    new-instance v0, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    const-string v1, "OUT_OF_TOKENS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;->OUT_OF_TOKENS:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    .line 20
    new-instance v0, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    const-string v1, "INVALID_UUID"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;->INVALID_UUID:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    .line 21
    new-instance v0, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    const-string v1, "PRICE_MISMATCH"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;->PRICE_MISMATCH:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    .line 22
    new-instance v0, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    const-string v1, "NULL"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;->NULL:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    .line 12
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    sget-object v1, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;->PENDING:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;->RECEIVED:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;->DOWNLOADED:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;->INSTALLED:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    aput-object v1, v0, v6

    sget-object v1, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;->FAILED:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;->CANCELED:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;->OUT_OF_TOKENS:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;->INVALID_UUID:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;->PRICE_MISMATCH:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;->NULL:Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    aput-object v2, v0, v1

    sput-object v0, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;->ENUM$VALUES:[Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    return-object p0
.end method

.method public static values()[Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;->ENUM$VALUES:[Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    array-length v1, v0

    new-array v2, v1, [Lcom/slideme/sam/manager/model/domain/purchase/Purchase$Status;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
