.class public Lcom/slideme/sam/manager/view/adapters/BundleIdsAdapter;
.super Ljava/lang/Object;
.source "BundleIdsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/slideme/sam/manager/view/adapters/BundleIdsAdapter$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final DATABASE_CREATE:Ljava/lang/String; = "create table IF NOT EXISTS bundleids (_id integer primary key autoincrement, bundleId text not null, createdStamp long, modifiedStamp long);"

.field private static final DATABASE_CREATE2:Ljava/lang/String; = "create table IF NOT EXISTS installed_bundles (_id integer primary key autoincrement, bundleId text not null, createdStamp long, modifiedStamp long);"

.field private static final DATABASE_NAME:Ljava/lang/String; = "data"

.field private static final DATABASE_TABLE:Ljava/lang/String; = "bundleids"

.field private static final DATABASE_TABLE2:Ljava/lang/String; = "installed_bundles"

.field private static final DATABASE_VERSION:I = 0x2

.field public static final KEY_BUNDLEID:Ljava/lang/String; = "bundleId"

.field public static final KEY_CREATED:Ljava/lang/String; = "createdStamp"

.field public static final KEY_MODIFIED:Ljava/lang/String; = "modifiedStamp"

.field public static final KEY_ROWID:Ljava/lang/String; = "_id"

.field private static final TAG:Ljava/lang/String; = "BundleIdsAdapter"


# instance fields
.field private final mCtx:Landroid/content/Context;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mDbHelper:Lcom/slideme/sam/manager/view/adapters/BundleIdsAdapter$DatabaseHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "ctx"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/slideme/sam/manager/view/adapters/BundleIdsAdapter;->mCtx:Landroid/content/Context;

    .line 68
    return-void
.end method


# virtual methods
.method public addDownloadedId(Ljava/lang/String;JJ)J
    .locals 12
    .parameter "bundleId"
    .parameter "createdStamp"
    .parameter "modifiedStamp"

    .prologue
    .line 117
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 118
    .local v11, initialValues:Landroid/content/ContentValues;
    const-string v0, "bundleId"

    invoke-virtual {v11, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v0, "createdStamp"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 120
    const-string v0, "modifiedStamp"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 121
    iget-object v0, p0, Lcom/slideme/sam/manager/view/adapters/BundleIdsAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    const-string v2, "installed_bundles"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "bundleId"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "createdStamp"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "modifiedStamp"

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "bundleId=\""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 122
    .local v10, c:Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 124
    const-wide/16 v0, 0x0

    .line 127
    :goto_0
    return-wide v0

    .line 126
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 127
    iget-object v0, p0, Lcom/slideme/sam/manager/view/adapters/BundleIdsAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "installed_bundles"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public addInstalledId(Ljava/lang/String;JJ)J
    .locals 12
    .parameter "bundleId"
    .parameter "createdStamp"
    .parameter "modifiedStamp"

    .prologue
    .line 102
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 103
    .local v11, initialValues:Landroid/content/ContentValues;
    const-string v0, "bundleId"

    invoke-virtual {v11, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v0, "createdStamp"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 105
    const-string v0, "modifiedStamp"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 106
    iget-object v0, p0, Lcom/slideme/sam/manager/view/adapters/BundleIdsAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    const-string v2, "bundleids"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "bundleId"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "createdStamp"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "modifiedStamp"

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "bundleId=\""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 107
    .local v10, c:Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 109
    const-wide/16 v0, 0x0

    .line 112
    :goto_0
    return-wide v0

    .line 111
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 112
    iget-object v0, p0, Lcom/slideme/sam/manager/view/adapters/BundleIdsAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "bundleids"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/slideme/sam/manager/view/adapters/BundleIdsAdapter;->mDbHelper:Lcom/slideme/sam/manager/view/adapters/BundleIdsAdapter$DatabaseHelper;

    invoke-virtual {v0}, Lcom/slideme/sam/manager/view/adapters/BundleIdsAdapter$DatabaseHelper;->close()V

    .line 87
    return-void
.end method

.method public deleteId(J)Z
    .locals 4
    .parameter "rowId"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/slideme/sam/manager/view/adapters/BundleIdsAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "bundleids"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fetchAllDownloadedIds()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 164
    iget-object v0, p0, Lcom/slideme/sam/manager/view/adapters/BundleIdsAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "installed_bundles"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "bundleId"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    .line 165
    const-string v5, "createdStamp"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "modifiedStamp"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    .line 164
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public fetchAllUpdateIds()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 153
    iget-object v0, p0, Lcom/slideme/sam/manager/view/adapters/BundleIdsAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "bundleids"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "bundleId"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    .line 154
    const-string v5, "createdStamp"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "modifiedStamp"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    .line 153
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public fetchId(J)Landroid/database/Cursor;
    .locals 11
    .parameter "rowId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 180
    iget-object v0, p0, Lcom/slideme/sam/manager/view/adapters/BundleIdsAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "bundleids"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v4

    .line 181
    const-string v4, "bundleId"

    aput-object v4, v3, v1

    const/4 v4, 0x2

    const-string v6, "createdStamp"

    aput-object v6, v3, v4

    const/4 v4, 0x3

    const-string v6, "modifiedStamp"

    aput-object v6, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "_id="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    .line 180
    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 183
    .local v10, mCursor:Landroid/database/Cursor;
    if-eqz v10, :cond_0

    .line 184
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 186
    :cond_0
    return-object v10
.end method

.method public open()Lcom/slideme/sam/manager/view/adapters/BundleIdsAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 80
    new-instance v0, Lcom/slideme/sam/manager/view/adapters/BundleIdsAdapter$DatabaseHelper;

    iget-object v1, p0, Lcom/slideme/sam/manager/view/adapters/BundleIdsAdapter;->mCtx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/slideme/sam/manager/view/adapters/BundleIdsAdapter$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/slideme/sam/manager/view/adapters/BundleIdsAdapter;->mDbHelper:Lcom/slideme/sam/manager/view/adapters/BundleIdsAdapter$DatabaseHelper;

    .line 81
    iget-object v0, p0, Lcom/slideme/sam/manager/view/adapters/BundleIdsAdapter;->mDbHelper:Lcom/slideme/sam/manager/view/adapters/BundleIdsAdapter$DatabaseHelper;

    invoke-virtual {v0}, Lcom/slideme/sam/manager/view/adapters/BundleIdsAdapter$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/slideme/sam/manager/view/adapters/BundleIdsAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 82
    return-object p0
.end method

.method public removeId([Ljava/lang/String;)Z
    .locals 3
    .parameter "id"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/slideme/sam/manager/view/adapters/BundleIdsAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "bundleids"

    const-string v2, "bundleId=?"

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateBundleId(JLjava/lang/String;JJ)Z
    .locals 5
    .parameter "rowId"
    .parameter "bundleId"
    .parameter "createdStamp"
    .parameter "modifiedStamp"

    .prologue
    .line 202
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 203
    .local v0, args:Landroid/content/ContentValues;
    const-string v1, "bundleId"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v1, "modifiedStamp"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 207
    iget-object v1, p0, Lcom/slideme/sam/manager/view/adapters/BundleIdsAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "bundleids"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
