.class public final Lcom/google/android/apps/nexuslauncher/allapps/T0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/apps/nexuslauncher/allapps/y0;

.field public final b:Landroid/content/Context;

.field public final c:Ljava/util/concurrent/CompletableFuture;

.field public final d:Lcom/android/launcher3/views/ActivityContext;

.field public e:Landroid/app/appsearch/GetByDocumentIdRequest;

.field public f:Lio/grpc/internal/z1;

.field public g:Lf2/Z;

.field public final h:Lcom/google/android/apps/nexuslauncher/allapps/W;

.field public final i:Lcom/google/android/apps/nexuslauncher/allapps/s1;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/y0;Lcom/google/android/apps/nexuslauncher/allapps/s1;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/T0;->c:Ljava/util/concurrent/CompletableFuture;

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/T0;->a:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/T0;->b:Landroid/content/Context;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/W;

    invoke-direct {v1, p1}, Lcom/google/android/apps/nexuslauncher/allapps/W;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/y0;)V

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/T0;->h:Lcom/google/android/apps/nexuslauncher/allapps/W;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/T0;->i:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    iget-boolean p2, p2, Lcom/google/android/apps/nexuslauncher/allapps/s1;->g:Z

    if-eqz p2, :cond_0

    new-instance p2, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;

    const-string v1, "default"

    invoke-direct {p2, v1}, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;-><init>(Ljava/lang/String;)V

    const-string v1, "zp"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;->addIds([Ljava/lang/String;)Landroid/app/appsearch/GetByDocumentIdRequest$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/appsearch/GetByDocumentIdRequest$Builder;->build()Landroid/app/appsearch/GetByDocumentIdRequest;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/T0;->e:Landroid/app/appsearch/GetByDocumentIdRequest;

    const-class p2, Landroid/app/appsearch/AppSearchManager;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/appsearch/AppSearchManager;

    invoke-static {}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->g()Lcom/android/launcher3/util/LooperExecutor;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/z0;

    invoke-direct {v1, p0}, Lcom/google/android/apps/nexuslauncher/allapps/z0;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/T0;)V

    invoke-virtual {p2, v0, v1}, Landroid/app/appsearch/AppSearchManager;->createGlobalSearchSession(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    :cond_0
    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast p1, Lcom/android/launcher3/views/ActivityContext;

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/T0;->d:Lcom/android/launcher3/views/ActivityContext;

    return-void
.end method

.method public static a(Lcom/google/android/apps/nexuslauncher/allapps/T0;Ljava/lang/Throwable;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/google/android/apps/nexuslauncher/allapps/S0;->a:LX2/k0;

    instance-of p0, p1, Lio/grpc/StatusRuntimeException;

    if-eqz p0, :cond_1

    check-cast p1, Lio/grpc/StatusRuntimeException;

    invoke-virtual {p1}, Lio/grpc/StatusRuntimeException;->b()LX2/r0;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p1, Lcom/google/android/apps/nexuslauncher/allapps/S0;->a:LX2/k0;

    invoke-virtual {p0, p1}, LX2/r0;->c(LX2/n0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf2/X;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lf2/X;->b()Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchError$Status;

    move-result-object p0

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchError$Status;->d:Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchError$Status;

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_3

    const/4 p1, 0x2

    if-eq p0, p1, :cond_2

    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    const/4 p0, 0x5

    goto :goto_2

    :cond_3
    const/4 p0, 0x4

    :goto_2
    return p0
.end method

.method public static e(Lf2/J0;)V
    .locals 7

    sget-boolean v0, Lcom/google/android/apps/nexuslauncher/allapps/D2;->b:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Session Summary is below: \nFirstEditTime= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lf2/J0;->j()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " LastEditTime= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lf2/J0;->k()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AGASessionSummaryLog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p0}, Lf2/J0;->o()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Lf2/J0;->n(I)Lf2/x0;

    move-result-object v3

    invoke-virtual {v3}, Lf2/x0;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2}, Lf2/J0;->n(I)Lf2/x0;

    move-result-object v4

    invoke-virtual {v4}, Lf2/x0;->f()Lcom/google/protobuf/S;

    move-result-object v4

    sget-boolean v5, Lcom/google/android/apps/nexuslauncher/allapps/D2;->b:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "suggestionResponseId= "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Number of OneSearchRenderedBlock= "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\t"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lf2/w0;

    invoke-virtual {v6}, Lf2/w0;->d()Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/RenderedSuggestions$OneSearchRenderedBlock$RowInfoCase;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "QueryClearTapCount= "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lf2/J0;->l()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,LongPressCount= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lf2/J0;->m()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Entry point= "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lf2/J0;->i()Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchEntryPoint;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method


# virtual methods
.method public final b(Landroid/app/search/Query;Lf2/A;Lcom/google/android/apps/nexuslauncher/allapps/p;J[BZ)V
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lf2/A;->c(I)Z

    move-result v3

    iget-object v4, v0, Lcom/google/android/apps/nexuslauncher/allapps/T0;->i:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    iget-object v5, v4, Lcom/google/android/apps/nexuslauncher/allapps/s1;->v:Lcom/google/android/apps/nexuslauncher/allapps/t1;

    iput-boolean v3, v5, Lcom/google/android/apps/nexuslauncher/allapps/t1;->n:Z

    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Lf2/A;->c(I)Z

    move-result v5

    iget-object v6, v4, Lcom/google/android/apps/nexuslauncher/allapps/s1;->v:Lcom/google/android/apps/nexuslauncher/allapps/t1;

    iput-boolean v5, v6, Lcom/google/android/apps/nexuslauncher/allapps/t1;->p:Z

    iget-boolean v6, v4, Lcom/google/android/apps/nexuslauncher/allapps/s1;->a:Z

    if-eqz v5, :cond_0

    if-nez v6, :cond_1

    :cond_0
    if-eqz v3, :cond_2

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "web"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/app/search/Query;->getInput()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/app/search/Query;->getTimestampMillis()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lf2/A;->e()Lcom/google/protobuf/S;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lf2/A;->d()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_3b

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lf2/p0;

    invoke-virtual/range {p1 .. p1}, Landroid/app/search/Query;->getInput()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v12}, Lf2/p0;->o()Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchSuggestion$SuggestionType;

    move-result-object v15

    sget-object v1, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchSuggestion$SuggestionType;->f:Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchSuggestion$SuggestionType;

    if-ne v15, v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    move-object/from16 v16, v9

    sget-object v9, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchSuggestion$SuggestionType;->g:Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchSuggestion$SuggestionType;

    if-ne v15, v9, :cond_4

    const/4 v9, 0x1

    goto :goto_3

    :cond_4
    const/4 v9, 0x0

    :goto_3
    sget-object v2, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchSuggestion$SuggestionType;->i:Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchSuggestion$SuggestionType;

    if-ne v15, v2, :cond_5

    const/4 v2, 0x1

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    move/from16 v17, v11

    invoke-virtual {v12}, Lf2/p0;->l()Ljava/lang/String;

    move-result-object v11

    const-string v18, "icon_row_medium"

    move-object/from16 v19, v8

    const-string v8, "short_icon_row"

    if-eqz v2, :cond_6

    move-object/from16 v21, v8

    move-object/from16 v20, v18

    goto :goto_5

    :cond_6
    move-object/from16 v20, v8

    move-object/from16 v21, v20

    :goto_5
    invoke-virtual {v12}, Lf2/p0;->n()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v22, v14

    invoke-virtual {v12}, Lf2/p0;->j()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v23, v7

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    move/from16 v24, v3

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move/from16 v25, v6

    const-string v6, "bitmap_url"

    const/16 v26, 0x0

    if-nez v1, :cond_7

    if-eqz v9, :cond_8

    :cond_7
    invoke-virtual {v12}, Lf2/p0;->s()Z

    move-result v27

    if-eqz v27, :cond_8

    invoke-virtual {v12}, Lf2/p0;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_8
    move-object/from16 v0, v26

    :goto_6
    invoke-virtual {v12}, Lf2/p0;->v()Z

    move-result v27

    move-object/from16 v28, v0

    const-string v0, "tall_card_image_description"

    move-object/from16 v29, v10

    const-string v10, "tall_card_header"

    const-string v30, "extra_tall_icon_row"

    move-object/from16 v31, v14

    const-string v14, "tall_card_with_image_no_icon"

    if-eqz v27, :cond_12

    invoke-virtual {v12}, Lf2/p0;->i()Lf2/j0;

    move-result-object v6

    invoke-virtual {v6}, Lf2/j0;->l()Z

    move-result v27

    if-eqz v27, :cond_e

    invoke-virtual {v6}, Lf2/j0;->f()Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchSuggestion$LayoutType;

    move-result-object v20

    move/from16 v27, v13

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    move-object/from16 v32, v8

    const/4 v8, 0x1

    if-eq v13, v8, :cond_b

    const/4 v8, 0x2

    if-eq v13, v8, :cond_a

    const/4 v8, 0x3

    if-eq v13, v8, :cond_9

    move-object/from16 v8, v21

    goto :goto_7

    :cond_9
    move-object v8, v14

    goto :goto_7

    :cond_a
    move-object/from16 v8, v30

    goto :goto_7

    :cond_b
    move-object/from16 v8, v18

    :goto_7
    if-ne v8, v14, :cond_d

    invoke-virtual {v6}, Lf2/j0;->j()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-virtual {v6}, Lf2/j0;->d()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v10, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Lf2/j0;->k()Z

    move-result v10

    if-eqz v10, :cond_c

    const-string v10, "tall_card_header_content_description_override"

    invoke-virtual {v6}, Lf2/j0;->e()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v10, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    invoke-virtual {v6}, Lf2/j0;->b()Lcom/google/protobuf/S;

    move-result-object v26

    :cond_d
    move-object/from16 v20, v8

    goto :goto_8

    :cond_e
    move-object/from16 v32, v8

    move/from16 v27, v13

    :goto_8
    invoke-virtual {v6}, Lf2/j0;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lf2/j0;->g()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6}, Lf2/j0;->n()Z

    move-result v13

    if-eqz v13, :cond_f

    const-string v13, "title_content_description_override"

    move-object/from16 v18, v8

    invoke-virtual {v6}, Lf2/j0;->i()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v13, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_f
    move-object/from16 v18, v8

    :goto_9
    invoke-virtual {v6}, Lf2/j0;->m()Z

    move-result v8

    if-eqz v8, :cond_10

    const-string v8, "subtitle_content_description_override"

    invoke-virtual {v6}, Lf2/j0;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v8, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    invoke-virtual {v12}, Lf2/p0;->r()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-virtual {v12}, Lf2/p0;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    move-object/from16 v33, v4

    move-object/from16 v8, v18

    move-object/from16 v0, v26

    move-object/from16 v26, v10

    goto/16 :goto_e

    :cond_12
    move-object/from16 v32, v8

    move/from16 v27, v13

    if-nez v9, :cond_13

    if-eqz v1, :cond_14

    :cond_13
    move-object/from16 v20, v30

    :cond_14
    if-eqz v1, :cond_15

    invoke-virtual {v12}, Lf2/p0;->c()Lf2/e0;

    move-result-object v0

    invoke-virtual {v0}, Lf2/e0;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12}, Lf2/p0;->c()Lf2/e0;

    move-result-object v6

    invoke-virtual {v6}, Lf2/e0;->b()Ljava/lang/String;

    move-result-object v6

    move-object v8, v0

    move-object/from16 v33, v4

    goto/16 :goto_d

    :cond_15
    if-eqz v9, :cond_1a

    invoke-virtual {v12}, Lf2/p0;->b()Lf2/c0;

    move-result-object v8

    invoke-virtual {v8}, Lf2/c0;->c()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8}, Lf2/c0;->d()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v30, v13

    iget-boolean v13, v4, Lcom/google/android/apps/nexuslauncher/allapps/s1;->l:Z

    if-eqz v13, :cond_19

    invoke-virtual {v8}, Lf2/c0;->f()Z

    move-result v13

    if-eqz v13, :cond_19

    invoke-virtual {v8}, Lf2/c0;->e()LT2/n;

    move-result-object v8

    invoke-virtual {v8}, LT2/n;->f()Z

    move-result v13

    if-eqz v13, :cond_16

    invoke-virtual {v8}, LT2/n;->d()LT2/q;

    move-result-object v8

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v33, v4

    invoke-virtual {v8}, LT2/q;->h()I

    move-result v4

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, LT2/q;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, LT2/q;->f()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v18, v4

    invoke-virtual {v8}, LT2/q;->e()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v13, v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v13, "%s \u2022 %s"

    invoke-static {v13, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, LT2/q;->b()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8}, LT2/q;->g()Ljava/lang/String;

    move-result-object v28

    invoke-virtual {v8}, LT2/q;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v13

    move-object/from16 v0, v28

    move-object v13, v4

    move-object/from16 v4, v18

    goto :goto_a

    :cond_16
    move-object/from16 v33, v4

    invoke-virtual {v8}, LT2/n;->e()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {v8}, LT2/n;->c()LT2/i;

    move-result-object v0

    invoke-virtual {v0}, LT2/i;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, LT2/i;->f()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, LT2/i;->c()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0}, LT2/i;->e()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v36, v13

    move-object v13, v8

    move-object/from16 v8, v36

    :goto_a
    move-object/from16 v18, v8

    goto :goto_b

    :cond_17
    move-object/from16 v4, v26

    move-object/from16 v0, v28

    move-object/from16 v13, v30

    :goto_b
    if-eqz v4, :cond_18

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_18

    invoke-virtual {v7, v10, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v20, v14

    :cond_18
    move-object v8, v13

    goto :goto_c

    :cond_19
    move-object/from16 v33, v4

    move-object/from16 v8, v30

    :goto_c
    move-object/from16 v0, v26

    move-object/from16 v26, v18

    goto :goto_e

    :cond_1a
    move-object/from16 v33, v4

    if-eqz v2, :cond_1b

    invoke-virtual {v12}, Lf2/p0;->q()Lf2/o0;

    move-result-object v0

    invoke-virtual {v0}, Lf2/o0;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12}, Lf2/p0;->q()Lf2/o0;

    move-result-object v4

    invoke-virtual {v4}, Lf2/o0;->c()Ljava/lang/String;

    move-result-object v6

    move-object v8, v0

    :goto_d
    move-object/from16 v0, v26

    move-object/from16 v26, v6

    :goto_e
    move-object/from16 v4, v26

    move-object/from16 v26, v0

    move-object/from16 v0, v20

    goto :goto_f

    :cond_1b
    sget-object v0, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchSuggestion$SuggestionType;->h:Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchSuggestion$SuggestionType;

    if-ne v15, v0, :cond_1c

    move-object/from16 v0, v20

    move-object/from16 v4, v26

    move-object/from16 v8, v31

    goto :goto_f

    :cond_1c
    move-object/from16 v0, v20

    move-object/from16 v4, v26

    move-object/from16 v8, v32

    :goto_f
    new-instance v6, Landroid/app/search/SearchTarget$Builder;

    const/high16 v10, 0x20000

    invoke-direct {v6, v10, v0, v11}, Landroid/app/search/SearchTarget$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const-string v10, "com.google.android.googlequicksearchbox"

    invoke-virtual {v6, v10}, Landroid/app/search/SearchTarget$Builder;->setPackageName(Ljava/lang/String;)Landroid/app/search/SearchTarget$Builder;

    move-result-object v6

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/app/search/SearchTarget$Builder;->setUserHandle(Landroid/os/UserHandle;)Landroid/app/search/SearchTarget$Builder;

    move-result-object v6

    invoke-virtual {v12}, Lf2/p0;->w()Z

    move-result v13

    if-eqz v13, :cond_1d

    invoke-virtual {v12}, Lf2/p0;->k()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v6, v13}, Landroid/app/search/SearchTarget$Builder;->setScore(F)Landroid/app/search/SearchTarget$Builder;

    :cond_1d
    invoke-virtual {v12}, Lf2/p0;->x()Z

    move-result v13

    move-object/from16 v18, v11

    const-string v11, "suggest_url"

    move-object/from16 v20, v6

    const-string v6, "skip_logging_in_target_handler"

    if-eqz v13, :cond_1e

    invoke-virtual {v12}, Lf2/p0;->p()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_1e

    invoke-static {v13}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1e

    invoke-virtual {v7, v11, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x1

    invoke-virtual {v3, v6, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1e
    new-instance v13, Landroid/content/Intent;

    move-object/from16 v28, v11

    const-string v11, "android.intent.action.WEB_SEARCH"

    invoke-direct {v13, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v11, "query"

    move-object/from16 v30, v4

    invoke-virtual {v12}, Lf2/p0;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v11, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v13, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "group_id"

    invoke-virtual {v7, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "suggest_raw_text"

    move-object/from16 v34, v4

    move-object/from16 v4, v32

    invoke-virtual {v7, v11, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v27, :cond_1f

    sget-object v4, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchSuggestion$SuggestionType;->d:Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchSuggestion$SuggestionType;

    if-ne v15, v4, :cond_1f

    const-string v4, "suggest_render_text"

    move-object/from16 v35, v11

    move-object/from16 v11, v31

    invoke-virtual {v7, v4, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    :cond_1f
    move-object/from16 v35, v11

    :goto_10
    const-string v4, "is_entity"

    invoke-virtual {v7, v4, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "is_answer"

    invoke-virtual {v7, v4, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "is_personal"

    invoke-virtual {v12}, Lf2/p0;->g()Z

    move-result v11

    invoke-virtual {v7, v4, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v12}, Lf2/p0;->g()Z

    move-result v4

    if-eqz v4, :cond_20

    sget-object v4, Lcom/android/launcher3/logger/LauncherAtom$Attribute;->WEB_SEARCH_RESULT_PERSONAL:Lcom/android/launcher3/logger/LauncherAtom$Attribute;

    goto :goto_12

    :cond_20
    invoke-virtual {v12}, Lf2/p0;->h()Z

    move-result v4

    sget-object v11, Lcom/android/launcher3/logger/LauncherAtom$Attribute;->WEB_SEARCH_RESULT_TRENDING:Lcom/android/launcher3/logger/LauncherAtom$Attribute;

    if-eqz v4, :cond_21

    move-object/from16 v31, v11

    goto :goto_11

    :cond_21
    invoke-virtual {v12}, Lf2/p0;->o()Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchSuggestion$SuggestionType;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eqz v4, :cond_28

    move-object/from16 v31, v11

    const/4 v11, 0x1

    if-eq v4, v11, :cond_27

    const/4 v11, 0x2

    if-eq v4, v11, :cond_26

    const/4 v11, 0x3

    if-eq v4, v11, :cond_24

    const/4 v11, 0x4

    if-eq v4, v11, :cond_23

    const/4 v11, 0x5

    if-eq v4, v11, :cond_22

    sget-object v4, Lcom/android/launcher3/logger/LauncherAtom$Attribute;->UNKNOWN:Lcom/android/launcher3/logger/LauncherAtom$Attribute;

    goto :goto_12

    :cond_22
    sget-object v4, Lcom/android/launcher3/logger/LauncherAtom$Attribute;->WEB_SEARCH_RESULT_URL:Lcom/android/launcher3/logger/LauncherAtom$Attribute;

    goto :goto_12

    :cond_23
    sget-object v4, Lcom/android/launcher3/logger/LauncherAtom$Attribute;->WEB_SEARCH_RESULT_CALCULATOR:Lcom/android/launcher3/logger/LauncherAtom$Attribute;

    goto :goto_12

    :cond_24
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    sget-object v4, Lcom/android/launcher3/logger/LauncherAtom$Attribute;->WEB_SEARCH_RESULT_RICH_ANSWER:Lcom/android/launcher3/logger/LauncherAtom$Attribute;

    goto :goto_12

    :cond_25
    sget-object v4, Lcom/android/launcher3/logger/LauncherAtom$Attribute;->WEB_SEARCH_RESULT_ANSWER:Lcom/android/launcher3/logger/LauncherAtom$Attribute;

    goto :goto_12

    :cond_26
    sget-object v4, Lcom/android/launcher3/logger/LauncherAtom$Attribute;->WEB_SEARCH_RESULT_ENTITY:Lcom/android/launcher3/logger/LauncherAtom$Attribute;

    goto :goto_12

    :cond_27
    :goto_11
    move-object/from16 v4, v31

    goto :goto_12

    :cond_28
    sget-object v4, Lcom/android/launcher3/logger/LauncherAtom$Attribute;->WEB_SEARCH_RESULT_QUERY:Lcom/android/launcher3/logger/LauncherAtom$Attribute;

    :goto_12
    invoke-virtual {v4}, Lcom/android/launcher3/logger/LauncherAtom$Attribute;->getNumber()I

    move-result v4

    const-string v11, "suggestion_type"

    invoke-virtual {v7, v11, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "support_query_builder"

    invoke-virtual {v12}, Lf2/p0;->m()Z

    move-result v11

    invoke-virtual {v7, v4, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "response_id"

    move-object/from16 v11, v29

    invoke-virtual {v7, v4, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v27, :cond_2a

    if-nez v1, :cond_2a

    if-eqz v9, :cond_29

    goto :goto_13

    :cond_29
    const/4 v1, 0x0

    goto :goto_14

    :cond_2a
    :goto_13
    const/4 v1, 0x1

    :goto_14
    xor-int/lit8 v1, v1, 0x1

    const-string v4, "suggest_truncate_start"

    invoke-virtual {v7, v4, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v12}, Lf2/p0;->g()Z

    move-result v1

    if-eqz v1, :cond_2b

    const v1, 0x7f0802b2

    :goto_15
    move-object/from16 v2, p0

    goto :goto_17

    :cond_2b
    sget-object v1, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchSuggestion$SuggestionType;->e:Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchSuggestion$SuggestionType;

    if-eq v15, v1, :cond_2e

    invoke-virtual {v12}, Lf2/p0;->u()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {v12}, Lf2/p0;->h()Z

    move-result v1

    if-eqz v1, :cond_2c

    goto :goto_16

    :cond_2c
    if-eqz v2, :cond_2d

    const v1, 0x7f0802b5

    goto :goto_15

    :cond_2d
    const v1, 0x7f0802b3

    goto :goto_15

    :cond_2e
    :goto_16
    const v1, 0x7f0802b4

    goto :goto_15

    :goto_17
    iget-object v4, v2, Lcom/google/android/apps/nexuslauncher/allapps/T0;->b:Landroid/content/Context;

    invoke-static {v4, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    const-string v4, "should_start_for_result"

    if-nez v25, :cond_2f

    const/4 v9, 0x1

    invoke-virtual {v3, v4, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2f
    if-eq v0, v14, :cond_30

    const/4 v0, 0x1

    goto :goto_18

    :cond_30
    const/4 v0, 0x0

    :goto_18
    const-string v9, "allow_pinning"

    invoke-virtual {v3, v9, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move/from16 v0, v24

    invoke-virtual {v3, v6, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v12}, Lf2/p0;->t()Z

    move-result v14

    if-eqz v14, :cond_34

    invoke-virtual {v12}, Lf2/p0;->f()Lf2/h0;

    move-result-object v14

    invoke-virtual {v14}, Lf2/h0;->h()Z

    move-result v14

    if-nez v14, :cond_31

    invoke-virtual {v12}, Lf2/p0;->f()Lf2/h0;

    move-result-object v14

    invoke-virtual {v14}, Lf2/h0;->g()Z

    move-result v14

    if-eqz v14, :cond_34

    :cond_31
    invoke-virtual {v12}, Lf2/p0;->f()Lf2/h0;

    move-result-object v12

    invoke-virtual {v12}, Lf2/h0;->h()Z

    move-result v14

    if-eqz v14, :cond_32

    invoke-virtual {v12}, Lf2/h0;->e()Lf2/g0;

    move-result-object v14

    invoke-virtual {v14}, Lf2/g0;->e()Z

    move-result v14

    if-eqz v14, :cond_32

    invoke-virtual {v12}, Lf2/h0;->e()Lf2/g0;

    move-result-object v14

    invoke-virtual {v14}, Lf2/g0;->b()Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchSuggestion$InteractionDialog$DialogButton$ButtonActionRpc;

    move-result-object v14

    sget-object v15, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchSuggestion$InteractionDialog$DialogButton$ButtonActionRpc;->d:Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchSuggestion$InteractionDialog$DialogButton$ButtonActionRpc;

    if-eq v14, v15, :cond_32

    const/4 v14, 0x1

    goto :goto_19

    :cond_32
    const/4 v14, 0x0

    :goto_19
    if-eqz v14, :cond_33

    invoke-virtual {v12}, Lf2/h0;->e()Lf2/g0;

    move-result-object v14

    goto :goto_1a

    :cond_33
    invoke-virtual {v12}, Lf2/h0;->d()Lf2/g0;

    move-result-object v14

    :goto_1a
    invoke-virtual {v14}, Lf2/g0;->d()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v29, v11

    const-string v11, "suggestion_action_text"

    invoke-virtual {v3, v11, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14}, Lf2/g0;->b()Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchSuggestion$InteractionDialog$DialogButton$ButtonActionRpc;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchSuggestion$InteractionDialog$DialogButton$ButtonActionRpc;->getNumber()I

    move-result v11

    const-string v14, "suggestion_action_rpc"

    invoke-virtual {v3, v14, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v12}, Lf2/h0;->f()Z

    move-result v11

    if-eqz v11, :cond_35

    const-string v11, "learn_more_url"

    invoke-virtual {v12}, Lf2/h0;->c()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    :cond_34
    move-object/from16 v29, v11

    :cond_35
    :goto_1b
    new-instance v11, Landroid/app/search/SearchAction$Builder;

    move-object/from16 v12, v23

    invoke-static {v12, v8}, Landroidx/constraintlayout/widget/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v14, v8}, Landroid/app/search/SearchAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v13}, Landroid/app/search/SearchAction$Builder;->setIntent(Landroid/content/Intent;)Landroid/app/search/SearchAction$Builder;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/app/search/SearchAction$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/search/SearchAction$Builder;

    move-result-object v1

    move-object/from16 v8, v30

    invoke-virtual {v1, v8}, Landroid/app/search/SearchAction$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/app/search/SearchAction$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/search/SearchAction$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/search/SearchAction$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/search/SearchAction$Builder;->build()Landroid/app/search/SearchAction;

    move-result-object v1

    move-object/from16 v3, v20

    invoke-virtual {v3, v1}, Landroid/app/search/SearchTarget$Builder;->setSearchAction(Landroid/app/search/SearchAction;)Landroid/app/search/SearchTarget$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/search/SearchTarget$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/search/SearchTarget$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/search/SearchTarget$Builder;->build()Landroid/app/search/SearchTarget;

    move-result-object v1

    move-object/from16 v3, v22

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/google/android/apps/nexuslauncher/c;->m:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-eqz v1, :cond_3a

    if-eqz v26, :cond_3a

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3a

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-nez v25, :cond_36

    const/4 v7, 0x1

    invoke-virtual {v1, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_36
    const/4 v4, 0x0

    invoke-virtual {v1, v9, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1, v6, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_39

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lf2/i0;

    invoke-virtual {v8}, Lf2/i0;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lf2/i0;->d()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8}, Lf2/i0;->f()Z

    move-result v14

    if-eqz v14, :cond_37

    invoke-virtual {v8}, Lf2/i0;->e()Ljava/lang/String;

    move-result-object v14

    goto :goto_1d

    :cond_37
    move-object/from16 v14, v32

    :goto_1d
    new-instance v15, Landroid/app/search/SearchTarget$Builder;

    move/from16 v24, v0

    const/high16 v0, 0x20000

    move-object/from16 v20, v7

    move-object/from16 v7, v21

    invoke-direct {v15, v0, v7, v9}, Landroid/app/search/SearchTarget$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/app/search/SearchTarget$Builder;->setParentId(Ljava/lang/String;)Landroid/app/search/SearchTarget$Builder;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/app/search/SearchTarget$Builder;->setPackageName(Ljava/lang/String;)Landroid/app/search/SearchTarget$Builder;

    move-result-object v9

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/app/search/SearchTarget$Builder;->setUserHandle(Landroid/os/UserHandle;)Landroid/app/search/SearchTarget$Builder;

    move-result-object v9

    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v34

    invoke-virtual {v15, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v35

    invoke-virtual {v15, v0, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Lf2/i0;->b()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_38

    move-object/from16 v14, v28

    invoke-virtual {v15, v14, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x1

    invoke-virtual {v1, v6, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1e

    :cond_38
    move-object/from16 v14, v28

    :goto_1e
    new-instance v8, Landroid/app/search/SearchAction$Builder;

    move-object/from16 v35, v0

    invoke-static {v12, v11}, Landroidx/constraintlayout/widget/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0, v11}, Landroid/app/search/SearchAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v13}, Landroid/app/search/SearchAction$Builder;->setIntent(Landroid/content/Intent;)Landroid/app/search/SearchAction$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/search/SearchAction$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/search/SearchAction$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/search/SearchAction$Builder;->build()Landroid/app/search/SearchAction;

    move-result-object v0

    invoke-virtual {v9, v15}, Landroid/app/search/SearchTarget$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/search/SearchTarget$Builder;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/app/search/SearchTarget$Builder;->setSearchAction(Landroid/app/search/SearchAction;)Landroid/app/search/SearchTarget$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/search/SearchTarget$Builder;->build()Landroid/app/search/SearchTarget;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v21, v7

    move-object/from16 v28, v14

    move-object/from16 v7, v20

    move/from16 v0, v24

    goto/16 :goto_1c

    :cond_39
    move/from16 v24, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1f

    :cond_3a
    move/from16 v24, v0

    :goto_1f
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v11, v17, 0x1

    move-object/from16 v1, p2

    move-object v8, v0

    move-object v0, v2

    move-object v7, v12

    move-object/from16 v9, v16

    move/from16 v3, v24

    move/from16 v6, v25

    move-object/from16 v10, v29

    move-object/from16 v4, v33

    move-object/from16 v2, p6

    goto/16 :goto_1

    :cond_3b
    move-object/from16 v1, p1

    move-object v2, v0

    move-object v0, v8

    invoke-static {v1, v0}, Lcom/google/android/apps/nexuslauncher/allapps/D2;->a(Landroid/app/search/Query;Ljava/util/List;)V

    move-object/from16 v1, p6

    if-eqz v1, :cond_3c

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3c

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/search/SearchTarget;

    invoke-virtual {v3}, Landroid/app/search/SearchTarget;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "zero_state_cache"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_3c
    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v3, Lcom/google/android/apps/nexuslauncher/allapps/I0;

    move-object/from16 v4, p3

    invoke-direct {v3, v4, v0}, Lcom/google/android/apps/nexuslauncher/allapps/I0;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/p;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v3}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    const-wide/16 v3, 0x0

    cmp-long v1, p4, v3

    if-ltz v1, :cond_3e

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3e

    invoke-virtual/range {p2 .. p2}, Lf2/A;->f()Lf2/D0;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v7, v2, Lcom/google/android/apps/nexuslauncher/allapps/T0;->h:Lcom/google/android/apps/nexuslauncher/allapps/W;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/launcher3/logging/InstanceIdSequence;

    invoke-direct {v1}, Lcom/android/launcher3/logging/InstanceIdSequence;-><init>()V

    invoke-virtual {v1}, Lcom/android/launcher3/logging/InstanceIdSequence;->newInstanceId()Lcom/android/launcher3/logging/InstanceId;

    move-result-object v8

    sub-long v5, v3, p4

    sget-object v1, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->d:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    if-eqz p7, :cond_3d

    iget-object v0, v7, Lcom/google/android/apps/nexuslauncher/allapps/W;->a:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;

    invoke-interface {v0, v8}, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;

    move-result-object v0

    invoke-interface {v0, v5, v6}, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;->withLatency(J)Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;

    move-result-object v0

    sget-object v2, Lcom/google/android/apps/nexuslauncher/logging/LatencyLoggingPackageId;->h:Lcom/google/android/apps/nexuslauncher/logging/LatencyLoggingPackageId;

    invoke-virtual {v2}, Lcom/google/android/apps/nexuslauncher/logging/LatencyLoggingPackageId;->a()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;->withPackageId(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;

    move-result-object v0

    sget-object v2, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;->CACHED:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    invoke-interface {v0, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;->withType(Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;)Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;

    move-result-object v0

    iget v2, v7, Lcom/google/android/apps/nexuslauncher/allapps/W;->d:I

    invoke-interface {v0, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;->withQueryLength(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    goto :goto_20

    :cond_3d
    invoke-virtual {v0}, Lf2/D0;->d()J

    move-result-wide v9

    sub-long v9, v9, p4

    invoke-virtual {v0}, Lf2/D0;->c()J

    move-result-wide v11

    sub-long v11, v3, v11

    invoke-virtual {v0}, Lf2/D0;->f()J

    move-result-wide v2

    invoke-virtual {v0}, Lf2/D0;->e()J

    move-result-wide v13

    sub-long v13, v2, v13

    move-object v0, v7

    move-wide v2, v5

    move-object v4, v8

    move-wide/from16 v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/nexuslauncher/allapps/W;->c(Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;JLcom/android/launcher3/logging/InstanceId;J)V

    sget-object v1, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->e:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    move-wide v2, v9

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/nexuslauncher/allapps/W;->c(Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;JLcom/android/launcher3/logging/InstanceId;J)V

    sget-object v1, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->f:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    move-wide v2, v11

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/nexuslauncher/allapps/W;->c(Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;JLcom/android/launcher3/logging/InstanceId;J)V

    sget-object v1, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->g:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    move-wide v2, v13

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/nexuslauncher/allapps/W;->c(Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;JLcom/android/launcher3/logging/InstanceId;J)V

    :cond_3e
    :goto_20
    return-void
.end method

.method public final c(Landroid/app/search/Query;Lcom/google/android/apps/nexuslauncher/allapps/p;Z)V
    .locals 9

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/T0;->d()Lf2/Z;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/T0;->h:Lcom/google/android/apps/nexuslauncher/allapps/W;

    invoke-virtual {p1}, Landroid/app/search/Query;->getInput()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, v1, Lcom/google/android/apps/nexuslauncher/allapps/W;->d:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/T0;->a:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/allapps/y0;->t:Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;

    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;->searchEntryState:Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchEntryPoint;

    invoke-virtual {p1}, Landroid/app/search/Query;->getInput()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lf2/w;->i()Lf2/u;

    move-result-object v3

    invoke-virtual {v3, v2}, Lf2/u;->d(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Lf2/u;->c(Z)V

    invoke-virtual {v3, v7, v8}, Lf2/u;->e(J)V

    invoke-virtual {v3}, Lf2/u;->f()V

    iget-object p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/T0;->i:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    iget-boolean p3, p3, Lcom/google/android/apps/nexuslauncher/allapps/s1;->l:Z

    const/4 v2, 0x1

    invoke-virtual {v3, v2, p3}, Lf2/u;->a(IZ)V

    const/4 p3, 0x2

    invoke-virtual {v3, p3, v2}, Lf2/u;->a(IZ)V

    sget-object p3, Lcom/google/android/apps/nexuslauncher/c;->m:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p3}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p3

    const/4 v4, 0x3

    invoke-virtual {v3, v4, p3}, Lf2/u;->a(IZ)V

    const/4 p3, 0x4

    invoke-virtual {v3, p3, v2}, Lf2/u;->a(IZ)V

    if-eqz v1, :cond_0

    invoke-virtual {v3, v1}, Lf2/u;->b(Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchEntryPoint;)V

    :cond_0
    invoke-virtual {v3}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object p3

    check-cast p3, Lf2/w;

    iget-object v1, v0, La3/b;->a:LX2/h;

    sget-object v3, Lf2/a0;->a:LX2/u0;

    if-nez v3, :cond_2

    const-class v4, Lf2/a0;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lf2/a0;->a:LX2/u0;

    if-nez v3, :cond_1

    invoke-static {}, LX2/u0;->b()LX2/s0;

    move-result-object v3

    sget-object v5, Lio/grpc/MethodDescriptor$MethodType;->d:Lio/grpc/MethodDescriptor$MethodType;

    iput-object v5, v3, LX2/s0;->c:Lio/grpc/MethodDescriptor$MethodType;

    const-string v5, "com.google.android.apps.search.googleapp.search.suggest.plugins.onesearch.OneSearchSuggest"

    const-string v6, "GetSuggestions"

    invoke-static {v5, v6}, LX2/u0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, LX2/s0;->d:Ljava/lang/String;

    iput-boolean v2, v3, LX2/s0;->e:Z

    invoke-static {}, Lf2/w;->h()Lf2/w;

    move-result-object v2

    sget-object v5, LZ2/c;->a:Lcom/google/protobuf/w;

    new-instance v5, LZ2/b;

    invoke-direct {v5, v2}, LZ2/b;-><init>(Lcom/google/protobuf/J;)V

    iput-object v5, v3, LX2/s0;->a:LX2/t0;

    invoke-static {}, Lf2/A;->b()Lf2/A;

    move-result-object v2

    new-instance v5, LZ2/b;

    invoke-direct {v5, v2}, LZ2/b;-><init>(Lcom/google/protobuf/J;)V

    iput-object v5, v3, LX2/s0;->b:LX2/t0;

    invoke-virtual {v3}, LX2/s0;->a()LX2/u0;

    move-result-object v2

    sput-object v2, Lf2/a0;->a:LX2/u0;

    move-object v3, v2

    :cond_1
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    iget-object v0, v0, La3/b;->b:LX2/g;

    invoke-virtual {v1, v3, v0}, LX2/h;->g(LX2/u0;LX2/g;)LX2/k;

    move-result-object v0

    invoke-static {v0, p3}, La3/e;->b(LX2/k;Ljava/lang/Object;)La3/c;

    move-result-object p3

    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/O0;

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/apps/nexuslauncher/allapps/O0;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/T0;Landroid/app/search/Query;Lcom/google/android/apps/nexuslauncher/allapps/p;J)V

    invoke-static {}, Lcom/google/common/util/concurrent/e;->a()Ljava/util/concurrent/Executor;

    invoke-static {p3, v0}, Lcom/google/common/util/concurrent/d;->a(La3/c;LR2/i;)V

    return-void
.end method

.method public final d()Lf2/Z;
    .locals 6

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/T0;->f:Lio/grpc/internal/z1;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/T0;->h:Lcom/google/android/apps/nexuslauncher/allapps/W;

    const-string v2, "OneSearchSuggestProvider"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/grpc/internal/k0;->h()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/T0;->g:Lf2/Z;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Established or reuse existing binder channel authority="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/T0;->f:Lio/grpc/internal/z1;

    invoke-virtual {v3}, Lio/grpc/internal/k0;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/google/android/apps/nexuslauncher/allapps/W;->c:Z

    goto/16 :goto_3

    :cond_1
    :goto_0
    sget v0, Lio/grpc/binder/AndroidComponentAddress;->d:I

    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.google.android.googlequicksearchbox"

    const-string v4, "com.google.android.apps.search.googleapp.search.suggest.plugins.onesearch.server.OneSearchSuggestService"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lio/grpc/binder/AndroidComponentAddress;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "grpc.io.action.BIND"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {v3, v0}, Lio/grpc/binder/AndroidComponentAddress;-><init>(Landroid/content/Intent;)V

    new-instance v0, Lio/grpc/binder/d;

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/allapps/T0;->b:Landroid/content/Context;

    invoke-direct {v0, v4, v3}, Lio/grpc/binder/d;-><init>(Landroid/content/Context;Lio/grpc/binder/AndroidComponentAddress;)V

    new-instance v3, Lio/grpc/binder/i;

    invoke-direct {v3}, Lio/grpc/binder/i;-><init>()V

    iput-object v3, v0, Lio/grpc/binder/d;->d:Lio/grpc/binder/h;

    invoke-virtual {v0}, Lio/grpc/binder/d;->a()LX2/f0;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/z1;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/T0;->f:Lio/grpc/internal/z1;

    new-instance v3, Lf2/Y;

    invoke-direct {v3}, Lf2/Y;-><init>()V

    invoke-static {v3, v0}, Lio/grpc/stub/a;->a(La3/a;Lio/grpc/internal/z1;)La3/b;

    move-result-object v0

    check-cast v0, Lf2/Z;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/T0;->g:Lf2/Z;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/T0;->f:Lio/grpc/internal/z1;

    const-string v3, " , mOneSearchConnection="

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lio/grpc/internal/k0;->h()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/T0;->g:Lf2/Z;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Created the binder channel successfully for end point service =com.google.android.apps.search.googleapp.search.suggest.plugins.onesearch.server.OneSearchSuggestService , mChannel="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/allapps/T0;->f:Lio/grpc/internal/z1;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/T0;->g:Lf2/Z;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Failed to build the binder channel for end point service =com.google.android.apps.search.googleapp.search.suggest.plugins.onesearch.server.OneSearchSuggestService , mChannel="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/allapps/T0;->f:Lio/grpc/internal/z1;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/T0;->g:Lf2/Z;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/google/android/apps/nexuslauncher/allapps/W;->c:Z

    :goto_3
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/T0;->g:Lf2/Z;

    return-object p0
.end method

.method public final f([BLandroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/T0;->a:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->t:Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;->searchEntryState:Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchEntryPoint;

    sget-object v1, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchEntryPoint;->e:Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchEntryPoint;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "and.gsa.launcher.onesearch.psb"

    goto :goto_0

    :cond_0
    const-string v0, "and.gsa.launcher.onesearch.allapps"

    :goto_0
    new-instance v4, Landroid/content/Intent;

    const-string v1, "com.google.android.PIXEL_SEARCH"

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.google.android.googlequicksearchbox"

    invoke-virtual {v4, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "onesearch_request_type"

    invoke-virtual {v4, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "onesearch_request"

    invoke-virtual {v4, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string p1, "source"

    invoke-virtual {v4, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const p1, 0x10018000

    invoke-virtual {v4, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    goto :goto_1

    :cond_1
    invoke-static {v4, p4}, Lcom/google/android/apps/nexuslauncher/allapps/g1;->t(Landroid/content/Intent;Ljava/lang/String;)Lcom/google/android/apps/nexuslauncher/allapps/g1;

    move-result-object p1

    :goto_1
    move-object v5, p1

    if-eqz p2, :cond_2

    invoke-virtual {v5}, Lcom/android/launcher3/model/data/ItemInfo;->shouldUseBackgroundAnimation()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "SelectSuggestionRequest"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    move v6, p1

    if-eqz v6, :cond_3

    const/16 p1, 0x47

    invoke-static {p2, p1}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->begin(Landroid/view/View;I)V

    :cond_3
    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance p3, Lcom/google/android/apps/nexuslauncher/allapps/A0;

    move-object v1, p3

    move-object v2, p0

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/apps/nexuslauncher/allapps/A0;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/T0;Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;Z)V

    invoke-virtual {p1, p3}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getManagedChannel()LX2/f0;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/T0;->f:Lio/grpc/internal/z1;

    return-object p0
.end method

.method public readFromAppSearch(Landroid/app/search/Query;Lcom/google/android/apps/nexuslauncher/allapps/p;Z)Ljava/util/concurrent/CompletableFuture;
    .locals 12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    new-instance v9, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v9}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    const/4 v0, 0x0

    filled-new-array {v0}, [[B

    move-result-object v6

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/T0;->c:Ljava/util/concurrent/CompletableFuture;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/C0;

    invoke-direct {v1, p0, v6, v9}, Lcom/google/android/apps/nexuslauncher/allapps/C0;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/T0;[[BLjava/util/concurrent/CompletableFuture;)V

    invoke-static {}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->g()Lcom/android/launcher3/util/LooperExecutor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/CompletableFuture;->thenAcceptAsync(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/D0;

    invoke-direct {v1, v9}, Lcom/google/android/apps/nexuslauncher/allapps/D0;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->exceptionally(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    new-instance v10, Lcom/google/android/apps/nexuslauncher/allapps/E0;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/nexuslauncher/allapps/E0;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/T0;Landroid/app/search/Query;Lcom/google/android/apps/nexuslauncher/allapps/p;J[[B)V

    invoke-static {}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->g()Lcom/android/launcher3/util/LooperExecutor;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Ljava/util/concurrent/CompletableFuture;->thenAcceptAsync(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v10

    new-instance v11, Lcom/google/android/apps/nexuslauncher/allapps/F0;

    move-object v0, v11

    move-wide v2, v7

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/nexuslauncher/allapps/F0;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/T0;JLandroid/app/search/Query;Lcom/google/android/apps/nexuslauncher/allapps/p;Z)V

    invoke-virtual {v10, v11}, Ljava/util/concurrent/CompletableFuture;->exceptionally(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    return-object v9
.end method

.method public setOneSearchConnection(Lf2/Z;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/T0;->g:Lf2/Z;

    return-void
.end method
