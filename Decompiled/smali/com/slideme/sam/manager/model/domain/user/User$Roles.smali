.class public final enum Lcom/slideme/sam/manager/model/domain/user/User$Roles;
.super Ljava/lang/Enum;
.source "User.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/slideme/sam/manager/model/domain/user/User;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Roles"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/slideme/sam/manager/model/domain/user/User$Roles;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DEVELOPER:Lcom/slideme/sam/manager/model/domain/user/User$Roles;

.field private static final synthetic ENUM$VALUES:[Lcom/slideme/sam/manager/model/domain/user/User$Roles;

.field public static final enum PAYING:Lcom/slideme/sam/manager/model/domain/user/User$Roles;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lcom/slideme/sam/manager/model/domain/user/User$Roles;

    const-string v1, "PAYING"

    invoke-direct {v0, v1, v2}, Lcom/slideme/sam/manager/model/domain/user/User$Roles;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/slideme/sam/manager/model/domain/user/User$Roles;->PAYING:Lcom/slideme/sam/manager/model/domain/user/User$Roles;

    new-instance v0, Lcom/slideme/sam/manager/model/domain/user/User$Roles;

    const-string v1, "DEVELOPER"

    invoke-direct {v0, v1, v3}, Lcom/slideme/sam/manager/model/domain/user/User$Roles;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/slideme/sam/manager/model/domain/user/User$Roles;->DEVELOPER:Lcom/slideme/sam/manager/model/domain/user/User$Roles;

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/slideme/sam/manager/model/domain/user/User$Roles;

    sget-object v1, Lcom/slideme/sam/manager/model/domain/user/User$Roles;->PAYING:Lcom/slideme/sam/manager/model/domain/user/User$Roles;

    aput-object v1, v0, v2

    sget-object v1, Lcom/slideme/sam/manager/model/domain/user/User$Roles;->DEVELOPER:Lcom/slideme/sam/manager/model/domain/user/User$Roles;

    aput-object v1, v0, v3

    sput-object v0, Lcom/slideme/sam/manager/model/domain/user/User$Roles;->ENUM$VALUES:[Lcom/slideme/sam/manager/model/domain/user/User$Roles;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/slideme/sam/manager/model/domain/user/User$Roles;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/slideme/sam/manager/model/domain/user/User$Roles;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/slideme/sam/manager/model/domain/user/User$Roles;

    return-object p0
.end method

.method public static values()[Lcom/slideme/sam/manager/model/domain/user/User$Roles;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/slideme/sam/manager/model/domain/user/User$Roles;->ENUM$VALUES:[Lcom/slideme/sam/manager/model/domain/user/User$Roles;

    array-length v1, v0

    new-array v2, v1, [Lcom/slideme/sam/manager/model/domain/user/User$Roles;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
