.class public final LJ/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lq/l;

.field public static final b:Ljava/util/concurrent/ExecutorService;

.field public static final c:Ljava/lang/Object;

.field public static final d:Lq/m;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lq/l;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lq/l;-><init>(I)V

    sput-object v0, LJ/j;->a:Lq/l;

    new-instance v9, LJ/n;

    invoke-direct {v9}, LJ/n;-><init>()V

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v1, 0x2710

    int-to-long v5, v1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    sput-object v0, LJ/j;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LJ/j;->c:Ljava/lang/Object;

    new-instance v0, Lq/m;

    invoke-direct {v0}, Lq/m;-><init>()V

    sput-object v0, LJ/j;->d:Lq/m;

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;LJ/f;I)LJ/i;
    .locals 12

    sget-object v0, LJ/j;->a:Lq/l;

    invoke-virtual {v0, p0}, Lq/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    if-eqz v1, :cond_0

    new-instance p0, LJ/i;

    invoke-direct {p0, v1}, LJ/i;-><init>(Landroid/graphics/Typeface;)V

    return-object p0

    :cond_0
    :try_start_0
    invoke-static {p1, p2}, LJ/e;->a(Landroid/content/Context;LJ/f;)LJ/k;

    move-result-object p2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x3

    iget-object v4, p2, LJ/k;->b:[LJ/l;

    iget p2, p2, LJ/k;->a:I

    if-eqz p2, :cond_2

    if-eq p2, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, -0x2

    goto :goto_3

    :cond_2
    if-eqz v4, :cond_7

    array-length p2, v4

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    array-length p2, v4

    move v5, v2

    :goto_0
    if-ge v5, p2, :cond_6

    aget-object v6, v4, v5

    iget v6, v6, LJ/l;->e:I

    if-eqz v6, :cond_5

    if-gez v6, :cond_4

    :goto_1
    move p2, v3

    goto :goto_3

    :cond_4
    move p2, v6

    goto :goto_3

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    move p2, v2

    goto :goto_3

    :cond_7
    :goto_2
    move p2, v1

    :goto_3
    if-eqz p2, :cond_8

    new-instance p0, LJ/i;

    invoke-direct {p0, p2}, LJ/i;-><init>(I)V

    return-object p0

    :cond_8
    sget-object p2, LE/g;->a:LE/h;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, 0x0

    :try_start_1
    array-length v5, v4

    move-object v7, p2

    move v6, v2

    :goto_4
    if-ge v6, v5, :cond_d

    aget-object v8, v4, v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v9, v8, LJ/l;->a:Landroid/net/Uri;

    const-string v10, "r"

    invoke-virtual {p1, v9, v10, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v9
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-nez v9, :cond_9

    if-eqz v9, :cond_c

    goto :goto_6

    :cond_9
    :try_start_3
    new-instance v10, Landroid/graphics/fonts/Font$Builder;

    invoke-direct {v10, v9}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iget v11, v8, LJ/l;->c:I

    invoke-virtual {v10, v11}, Landroid/graphics/fonts/Font$Builder;->setWeight(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v10

    iget-boolean v11, v8, LJ/l;->d:Z

    if-eqz v11, :cond_a

    move v11, v1

    goto :goto_5

    :cond_a
    move v11, v2

    :goto_5
    invoke-virtual {v10, v11}, Landroid/graphics/fonts/Font$Builder;->setSlant(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v10

    iget v8, v8, LJ/l;->b:I

    invoke-virtual {v10, v8}, Landroid/graphics/fonts/Font$Builder;->setTtcIndex(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v8

    if-nez v7, :cond_b

    new-instance v10, Landroid/graphics/fonts/FontFamily$Builder;

    invoke-direct {v10, v8}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    move-object v7, v10

    goto :goto_6

    :cond_b
    invoke-virtual {v7, v8}, Landroid/graphics/fonts/FontFamily$Builder;->addFont(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontFamily$Builder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_6
    :try_start_4
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_8

    :catchall_0
    move-exception v8

    :try_start_5
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v9

    :try_start_6
    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw v8
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :catch_0
    :cond_c
    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_d
    if-nez v7, :cond_e

    goto :goto_9

    :cond_e
    :try_start_7
    invoke-virtual {v7}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    move-result-object p1

    new-instance v1, Landroid/graphics/Typeface$CustomFallbackBuilder;

    invoke-direct {v1, p1}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    invoke-static {p1, p3}, LE/h;->a(Landroid/graphics/fonts/FontFamily;I)Landroid/graphics/fonts/Font;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;

    move-result-object p2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :catch_1
    :goto_9
    if-eqz p2, :cond_f

    invoke-virtual {v0, p0, p2}, Lq/l;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, LJ/i;

    invoke-direct {p0, p2}, LJ/i;-><init>(Landroid/graphics/Typeface;)V

    return-object p0

    :cond_f
    new-instance p0, LJ/i;

    invoke-direct {p0, v3}, LJ/i;-><init>(I)V

    return-object p0

    :catch_2
    new-instance p0, LJ/i;

    const/4 p1, -0x1

    invoke-direct {p0, p1}, LJ/i;-><init>(I)V

    return-object p0
.end method
