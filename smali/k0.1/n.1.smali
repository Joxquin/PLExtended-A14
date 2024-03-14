.class public final synthetic Lk0/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Landroid/content/Context;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput p1, p0, Lk0/n;->d:I

    iput-object p2, p0, Lk0/n;->e:Landroid/content/Context;

    iput-object p3, p0, Lk0/n;->f:Ljava/lang/String;

    iput-object p4, p0, Lk0/n;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 10

    iget v0, p0, Lk0/n;->d:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_f

    :pswitch_0
    iget-object v0, p0, Lk0/n;->e:Landroid/content/Context;

    iget-object v1, p0, Lk0/n;->f:Ljava/lang/String;

    iget-object p0, p0, Lk0/n;->g:Ljava/lang/String;

    sget-object v2, Lk0/d;->b:Lt0/d;

    if-nez v2, :cond_3

    const-class v3, Lt0/d;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lk0/d;->b:Lt0/d;

    if-nez v2, :cond_2

    new-instance v2, Lt0/d;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v4, Lk0/d;->c:Lt0/c;

    if-nez v4, :cond_1

    const-class v4, Lt0/c;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v5, Lk0/d;->c:Lt0/c;

    if-nez v5, :cond_0

    new-instance v5, Lt0/c;

    new-instance v6, Lk0/c;

    invoke-direct {v6, v0}, Lk0/c;-><init>(Landroid/content/Context;)V

    invoke-direct {v5, v6}, Lt0/c;-><init>(Lk0/c;)V

    sput-object v5, Lk0/d;->c:Lt0/c;

    :cond_0
    monitor-exit v4

    move-object v4, v5

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :cond_1
    :goto_0
    new-instance v0, Lt0/b;

    invoke-direct {v0}, Lt0/b;-><init>()V

    invoke-direct {v2, v4, v0}, Lt0/d;-><init>(Lt0/c;Lt0/b;)V

    sput-object v2, Lk0/d;->b:Lt0/d;

    :cond_2
    monitor-exit v3

    goto :goto_1

    :catchall_1
    move-exception p0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_3
    :goto_1
    sget-object v0, Lcom/airbnb/lottie/network/FileExtension;->e:Lcom/airbnb/lottie/network/FileExtension;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez p0, :cond_4

    goto/16 :goto_6

    :cond_4
    iget-object v5, v2, Lt0/d;->a:Lt0/c;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_3
    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Lt0/c;->b()Ljava/io/File;

    move-result-object v7

    sget-object v8, Lcom/airbnb/lottie/network/FileExtension;->d:Lcom/airbnb/lottie/network/FileExtension;

    invoke-static {v1, v8, v3}, Lt0/c;->a(Ljava/lang/String;Lcom/airbnb/lottie/network/FileExtension;Z)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v7, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_2

    :cond_5
    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Lt0/c;->b()Ljava/io/File;

    move-result-object v5

    invoke-static {v1, v0, v3}, Lt0/c;->a(Ljava/lang/String;Lcom/airbnb/lottie/network/FileExtension;Z)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_2

    :cond_6
    move-object v6, v4

    :goto_2
    if-nez v6, :cond_7

    goto :goto_3

    :cond_7
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const-string v9, ".zip"

    invoke-virtual {v7, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    move-object v8, v0

    :cond_8
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    invoke-static {}, Lw0/c;->a()V

    new-instance v6, Landroid/util/Pair;

    invoke-direct {v6, v8, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :catch_0
    :goto_3
    move-object v6, v4

    :goto_4
    if-nez v6, :cond_9

    goto :goto_6

    :cond_9
    iget-object v5, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/airbnb/lottie/network/FileExtension;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/io/InputStream;

    if-ne v5, v0, :cond_a

    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, v6}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, v1}, Lk0/s;->f(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lk0/H;

    move-result-object v0

    goto :goto_5

    :cond_a
    invoke-static {v6, v1}, Lk0/s;->c(Ljava/io/InputStream;Ljava/lang/String;)Lk0/H;

    move-result-object v0

    :goto_5
    iget-object v0, v0, Lk0/H;->a:Ljava/lang/Object;

    if-eqz v0, :cond_b

    check-cast v0, Lk0/m;

    goto :goto_7

    :cond_b
    :goto_6
    move-object v0, v4

    :goto_7
    if-eqz v0, :cond_c

    new-instance v1, Lk0/H;

    invoke-direct {v1, v0}, Lk0/H;-><init>(Lk0/m;)V

    goto :goto_c

    :cond_c
    invoke-static {}, Lw0/c;->a()V

    const-string v0, "LottieFetchResult close failed "

    invoke-static {}, Lw0/c;->a()V

    :try_start_4
    iget-object v5, v2, Lt0/d;->b:Lt0/b;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lt0/b;->a(Ljava/lang/String;)Lt0/a;

    move-result-object v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    iget-object v5, v4, Lt0/a;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    div-int/lit8 v5, v5, 0x64
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_d

    const/4 v3, 0x1

    goto :goto_8

    :catchall_2
    move-exception p0

    goto :goto_d

    :catch_1
    move-exception v1

    goto :goto_a

    :catch_2
    :cond_d
    :goto_8
    if-eqz v3, :cond_e

    :try_start_6
    iget-object v3, v4, Lt0/a;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iget-object v5, v4, Lt0/a;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v1, v3, v5, p0}, Lt0/d;->a(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lk0/H;

    move-result-object v1

    invoke-static {}, Lw0/c;->a()V

    goto :goto_9

    :cond_e
    new-instance v1, Lk0/H;

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Lt0/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lk0/H;-><init>(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_9
    :try_start_7
    invoke-virtual {v4}, Lt0/a;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_c

    :catch_3
    move-exception v2

    invoke-static {v0, v2}, Lw0/c;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    :goto_a
    :try_start_8
    new-instance v2, Lk0/H;

    invoke-direct {v2, v1}, Lk0/H;-><init>(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v4, :cond_f

    :try_start_9
    invoke-virtual {v4}, Lt0/a;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_b

    :catch_4
    move-exception v1

    invoke-static {v0, v1}, Lw0/c;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_f
    :goto_b
    move-object v1, v2

    :goto_c
    if-eqz p0, :cond_10

    iget-object v0, v1, Lk0/H;->a:Ljava/lang/Object;

    if-eqz v0, :cond_10

    sget-object v2, Lp0/g;->b:Lp0/g;

    check-cast v0, Lk0/m;

    iget-object v2, v2, Lp0/g;->a:Lq/l;

    invoke-virtual {v2, p0, v0}, Lq/l;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    return-object v1

    :goto_d
    if-eqz v4, :cond_11

    :try_start_a
    invoke-virtual {v4}, Lt0/a;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_e

    :catch_5
    move-exception v1

    invoke-static {v0, v1}, Lw0/c;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_11
    :goto_e
    throw p0

    :goto_f
    iget-object v0, p0, Lk0/n;->e:Landroid/content/Context;

    iget-object v1, p0, Lk0/n;->f:Ljava/lang/String;

    iget-object p0, p0, Lk0/n;->g:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lk0/s;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lk0/H;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
