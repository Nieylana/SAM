.class public Lcom/slideme/sam/manager/model/utils/InputStreamSniffer;
.super Ljava/io/InputStream;
.source "InputStreamSniffer.java"


# static fields
.field private static final HEXES:Ljava/lang/String; = "0123456789ABCDEF"


# instance fields
.field private origin:Ljava/io/InputStream;

.field private sniffer:Ljava/io/ByteArrayOutputStream;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 9
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/slideme/sam/manager/model/utils/InputStreamSniffer;->sniffer:Ljava/io/ByteArrayOutputStream;

    .line 22
    new-instance v0, Ljava/lang/Error;

    const-string v1, "FUCK"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "sniffable"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 9
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/slideme/sam/manager/model/utils/InputStreamSniffer;->sniffer:Ljava/io/ByteArrayOutputStream;

    .line 18
    iput-object p1, p0, Lcom/slideme/sam/manager/model/utils/InputStreamSniffer;->origin:Ljava/io/InputStream;

    .line 19
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/slideme/sam/manager/model/utils/InputStreamSniffer;->origin:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 52
    return-void
.end method

.method public getHexResponse()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v5, 0x0

    const-string v9, "0123456789ABCDEF"

    .line 28
    move-object v0, v5

    check-cast v0, [B

    move-object v4, v0

    .line 30
    .local v4, raw:[B
    :try_start_0
    invoke-virtual {p0}, Lcom/slideme/sam/manager/model/utils/InputStreamSniffer;->getSniffededData()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 34
    :goto_0
    if-nez v4, :cond_0

    .line 45
    :goto_1
    return-object v5

    .line 31
    :catch_0
    move-exception v2

    .line 32
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 37
    .end local v2           #e:Ljava/io/IOException;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    array-length v5, v4

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 39
    .local v3, hex:Ljava/lang/StringBuilder;
    array-length v5, v4

    const/4 v6, 0x0

    :goto_2
    if-lt v6, v5, :cond_1

    .line 45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 39
    :cond_1
    aget-byte v1, v4, v6

    .line 41
    .local v1, b:B
    const-string v7, "0123456789ABCDEF"

    and-int/lit16 v7, v1, 0xf0

    shr-int/lit8 v7, v7, 0x4

    invoke-virtual {v9, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 42
    const-string v8, "0123456789ABCDEF"

    and-int/lit8 v8, v1, 0xf

    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method

.method public getSniffededData()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12
    iget-object v0, p0, Lcom/slideme/sam/manager/model/utils/InputStreamSniffer;->sniffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 14
    iget-object v0, p0, Lcom/slideme/sam/manager/model/utils/InputStreamSniffer;->sniffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v1, p0, Lcom/slideme/sam/manager/model/utils/InputStreamSniffer;->origin:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 57
    .local v0, readed:I
    iget-object v1, p0, Lcom/slideme/sam/manager/model/utils/InputStreamSniffer;->sniffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 58
    return v0
.end method
