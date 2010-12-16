.class public Lcom/slideme/sam/manager/model/appstore/catalog/exception/CatalogException;
.super Ljava/lang/Exception;
.source "CatalogException.java"


# static fields
.field public static final CONNECT:I = 0x1f9

.field public static final INPUT_OUTPUT:I = 0x226

.field public static final PROCESS:I = 0x22b

.field public static final UNKNOWN:I = 0x1f4


# instance fields
.field private error:I

.field private origin:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "error"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 11
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/slideme/sam/manager/model/appstore/catalog/exception/CatalogException;->error:I

    .line 18
    iput p1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/exception/CatalogException;->error:I

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1
    .parameter "origin"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 11
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/slideme/sam/manager/model/appstore/catalog/exception/CatalogException;->error:I

    .line 14
    iput-object p1, p0, Lcom/slideme/sam/manager/model/appstore/catalog/exception/CatalogException;->origin:Ljava/lang/Exception;

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;I)V
    .locals 0
    .parameter "origin"
    .parameter "error"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/slideme/sam/manager/model/appstore/catalog/exception/CatalogException;-><init>(Ljava/lang/Exception;)V

    .line 23
    iput p2, p0, Lcom/slideme/sam/manager/model/appstore/catalog/exception/CatalogException;->error:I

    .line 24
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/slideme/sam/manager/model/appstore/catalog/exception/CatalogException;->error:I

    return v0
.end method

.method public getOrigin()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/slideme/sam/manager/model/appstore/catalog/exception/CatalogException;->origin:Ljava/lang/Exception;

    return-object v0
.end method
