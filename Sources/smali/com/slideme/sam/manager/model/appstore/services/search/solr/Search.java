.class public final Lcom/slideme/sam/manager/model/appstore/services/search/solr/Search;
.super Ljava/lang/Object;
.source "Search.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static queryForBundleIds(Ljava/lang/String;)[Ljava/lang/String;
    .locals 12
    .parameter "query"

    .prologue
    .line 23
    :try_start_0
    new-instance v9, Ljava/net/URL;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "http://stream.slideme.org/select/?rows=300&q=&q.alt="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "UTF-8"

    invoke-static {p0, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "~0.75&qf=title^10.0+body^8.0+name^2.0+sm_vid_Tags^5.0+taxonomy_names^1.0+tags_h1^5.0+tags_h2_h3^3.0+tags_h4_h5_h6^2.0+tags_inline^1.0+tags_a^0.0+ss_component_package_name^1.0&wt=json&fl=ss_mobileapp_bundle_id&fq=type:mobileapp&rows=300&omitHeader=true"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 27
    .local v9, url:Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 26
    check-cast v2, Ljava/net/HttpURLConnection;

    .line 29
    .local v2, connection:Ljava/net/HttpURLConnection;
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 30
    .local v4, inputStream:Ljava/io/InputStream;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 31
    .local v1, br:Ljava/io/BufferedReader;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .local v7, sb:Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, line:Ljava/lang/String;
    if-nez v6, :cond_0

    .line 39
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 42
    new-instance v10, Lorg/json/JSONObject;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v11, "response"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 43
    .local v5, jo:Lorg/json/JSONObject;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v8, t:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v10, "docs"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 46
    .local v0, arr:Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lt v3, v10, :cond_1

    .line 50
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-interface {v8, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    move-object v10, p0

    .line 56
    .end local v0           #arr:Lorg/json/JSONArray;
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v2           #connection:Ljava/net/HttpURLConnection;
    .end local v3           #i:I
    .end local v4           #inputStream:Ljava/io/InputStream;
    .end local v5           #jo:Lorg/json/JSONObject;
    .end local v6           #line:Ljava/lang/String;
    .end local v7           #sb:Ljava/lang/StringBuilder;
    .end local v8           #t:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v9           #url:Ljava/net/URL;
    :goto_2
    return-object v10

    .line 35
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v2       #connection:Ljava/net/HttpURLConnection;
    .restart local v4       #inputStream:Ljava/io/InputStream;
    .restart local v6       #line:Ljava/lang/String;
    .restart local v7       #sb:Ljava/lang/StringBuilder;
    .restart local v9       #url:Ljava/net/URL;
    .restart local p0
    :cond_0
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 51
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v2           #connection:Ljava/net/HttpURLConnection;
    .end local v4           #inputStream:Ljava/io/InputStream;
    .end local v6           #line:Ljava/lang/String;
    .end local v7           #sb:Ljava/lang/StringBuilder;
    .end local v9           #url:Ljava/net/URL;
    .end local p0
    :catch_0
    move-exception v10

    .line 56
    :goto_3
    const/4 v10, 0x0

    goto :goto_2

    .line 47
    .restart local v0       #arr:Lorg/json/JSONArray;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v2       #connection:Ljava/net/HttpURLConnection;
    .restart local v3       #i:I
    .restart local v4       #inputStream:Ljava/io/InputStream;
    .restart local v5       #jo:Lorg/json/JSONObject;
    .restart local v6       #line:Ljava/lang/String;
    .restart local v7       #sb:Ljava/lang/StringBuilder;
    .restart local v8       #t:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9       #url:Ljava/net/URL;
    .restart local p0
    :cond_1
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "ss_mobileapp_bundle_id"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 46
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 53
    .end local v0           #arr:Lorg/json/JSONArray;
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v2           #connection:Ljava/net/HttpURLConnection;
    .end local v3           #i:I
    .end local v4           #inputStream:Ljava/io/InputStream;
    .end local v5           #jo:Lorg/json/JSONObject;
    .end local v6           #line:Ljava/lang/String;
    .end local v7           #sb:Ljava/lang/StringBuilder;
    .end local v8           #t:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v9           #url:Ljava/net/URL;
    .end local p0
    :catch_1
    move-exception v10

    goto :goto_3
.end method
