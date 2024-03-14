.class public final LJ1/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:Ljava/util/List;

.field public d:LJ1/J;

.field public e:LJ1/z;

.field public f:Ljava/lang/String;

.field public g:LJ1/I;

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "id"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LJ1/e;->a:Ljava/lang/String;

    :goto_0
    const-string v0, "screenSessionId"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, LJ1/e;->b:J

    :goto_1
    const-string v0, "contentGroups"

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    goto :goto_3

    .line 7
    :cond_2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_3

    .line 8
    iput-object v2, p0, LJ1/e;->c:Ljava/util/List;

    goto :goto_3

    .line 9
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, LJ1/e;->c:Ljava/util/List;

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    if-nez v1, :cond_4

    .line 11
    iget-object v1, p0, LJ1/e;->c:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 12
    :cond_4
    iget-object v3, p0, LJ1/e;->c:Ljava/util/List;

    .line 13
    new-instance v4, LJ1/d;

    invoke-direct {v4, v1}, LJ1/d;-><init>(Landroid/os/Bundle;)V

    .line 14
    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    :goto_3
    const-string v0, "stats"

    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_4

    .line 16
    :cond_6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_7

    .line 17
    iput-object v2, p0, LJ1/e;->d:LJ1/J;

    goto :goto_4

    .line 18
    :cond_7
    new-instance v1, LJ1/J;

    invoke-direct {v1, v0}, LJ1/J;-><init>(Landroid/os/Bundle;)V

    .line 19
    iput-object v1, p0, LJ1/e;->d:LJ1/J;

    :goto_4
    const-string v0, "debugInfo"

    .line 20
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_5

    .line 21
    :cond_8
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_9

    .line 22
    iput-object v2, p0, LJ1/e;->e:LJ1/z;

    goto :goto_5

    .line 23
    :cond_9
    new-instance v0, LJ1/z;

    invoke-direct {v0}, LJ1/z;-><init>()V

    .line 24
    iput-object v0, p0, LJ1/e;->e:LJ1/z;

    :goto_5
    const-string v0, "opaquePayload"

    .line 25
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_6

    .line 26
    :cond_a
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LJ1/e;->f:Ljava/lang/String;

    :goto_6
    const-string v0, "setupInfo"

    .line 27
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_7

    .line 28
    :cond_b
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_c

    .line 29
    iput-object v2, p0, LJ1/e;->g:LJ1/I;

    goto :goto_7

    .line 30
    :cond_c
    new-instance v1, LJ1/I;

    invoke-direct {v1, v0}, LJ1/I;-><init>(Landroid/os/Bundle;)V

    .line 31
    iput-object v1, p0, LJ1/e;->g:LJ1/I;

    :goto_7
    const-string v0, "contentUri"

    .line 32
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_8

    .line 33
    :cond_d
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LJ1/e;->h:Ljava/lang/String;

    :goto_8
    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 19

    move-object/from16 v0, p0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v0, LJ1/e;->a:Ljava/lang/String;

    const-string v3, "id"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "screenSessionId"

    iget-wide v4, v0, LJ1/e;->b:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v2, v0, LJ1/e;->c:Ljava/util/List;

    const-string v4, "opaquePayload"

    const-string v5, "contentGroups"

    const/4 v6, 0x0

    if-nez v2, :cond_0

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_f

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v7, v0, LJ1/e;->c:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v7, v0, LJ1/e;->c:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LJ1/d;

    if-nez v8, :cond_1

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v17, v3

    move-object/from16 v16, v7

    goto/16 :goto_e

    :cond_1
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    iget-object v10, v8, LJ1/d;->a:Ljava/util/List;

    const-string v11, "contentRects"

    if-nez v10, :cond_2

    invoke-virtual {v9, v11, v6}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_2

    :cond_2
    new-instance v10, Ljava/util/ArrayList;

    iget-object v12, v8, LJ1/d;->a:Ljava/util/List;

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v12, v8, LJ1/d;->a:Ljava/util/List;

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, LJ1/y;

    if-nez v13, :cond_3

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v13}, LJ1/y;->a()Landroid/os/Bundle;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v9, v11, v10}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :goto_2
    iget-object v10, v8, LJ1/d;->b:Ljava/util/List;

    const-string v11, "selections"

    if-nez v10, :cond_5

    invoke-virtual {v9, v11, v6}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    move-object/from16 v16, v7

    goto/16 :goto_6

    :cond_5
    new-instance v10, Ljava/util/ArrayList;

    iget-object v12, v8, LJ1/d;->b:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v12, v8, LJ1/d;->b:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, LJ1/g;

    if-nez v13, :cond_6

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    iget-object v15, v13, LJ1/g;->a:Ljava/util/List;

    move-object/from16 v16, v7

    const-string v7, "rectIndices"

    if-nez v15, :cond_7

    invoke-virtual {v14, v7, v6}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_4

    :cond_7
    new-instance v15, Ljava/util/ArrayList;

    iget-object v6, v13, LJ1/g;->a:Ljava/util/List;

    invoke-direct {v15, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v14, v7, v15}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :goto_4
    iget-object v6, v13, LJ1/g;->b:Ljava/lang/String;

    invoke-virtual {v14, v3, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "isSmartSelection"

    iget-boolean v7, v13, LJ1/g;->c:Z

    invoke-virtual {v14, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v6, "suggestedPresentationMode"

    iget v7, v13, LJ1/g;->d:I

    invoke-virtual {v14, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v6, v13, LJ1/g;->e:Ljava/lang/String;

    invoke-virtual {v14, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v13, LJ1/g;->f:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$InteractionType;

    const-string v7, "interactionType"

    if-nez v6, :cond_8

    const/4 v15, 0x0

    invoke-virtual {v14, v7, v15}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_5

    :cond_8
    invoke-virtual {v6}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$InteractionType;->c()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v14, v7, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_5
    const-string v6, "contentGroupIndex"

    iget v7, v13, LJ1/g;->g:I

    invoke-virtual {v14, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v7, v16

    const/4 v6, 0x0

    goto :goto_3

    :cond_9
    move-object/from16 v16, v7

    invoke-virtual {v9, v11, v10}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :goto_6
    const-string v6, "text"

    iget-object v7, v8, LJ1/d;->c:Ljava/lang/String;

    invoke-virtual {v9, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "numLines"

    iget v7, v8, LJ1/d;->d:I

    invoke-virtual {v9, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v6, v8, LJ1/d;->e:Ljava/util/List;

    const-string v7, "searchSuggestions"

    if-nez v6, :cond_a

    const/4 v6, 0x0

    invoke-virtual {v9, v7, v6}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    move-object/from16 v17, v3

    goto/16 :goto_d

    :cond_a
    new-instance v6, Ljava/util/ArrayList;

    iget-object v10, v8, LJ1/d;->e:Ljava/util/List;

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-direct {v6, v10}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v8, v8, LJ1/d;->e:Ljava/util/List;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, LJ1/f;

    if-nez v10, :cond_b

    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_b
    const/4 v11, 0x0

    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    iget-object v13, v10, LJ1/f;->a:LJ1/a;

    const-string v14, "appActionSuggestion"

    if-nez v13, :cond_c

    invoke-virtual {v12, v14, v11}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    move-object/from16 v17, v3

    goto :goto_8

    :cond_c
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    const-string v15, "displayText"

    move-object/from16 v17, v3

    iget-object v3, v13, LJ1/a;->a:Ljava/lang/String;

    invoke-virtual {v11, v15, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "subtitle"

    iget-object v13, v13, LJ1/a;->b:Ljava/lang/String;

    invoke-virtual {v11, v3, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v14, v11}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_8
    iget-object v3, v10, LJ1/f;->b:LJ1/b;

    const-string v11, "appIcon"

    if-nez v3, :cond_d

    const/4 v13, 0x0

    invoke-virtual {v12, v11, v13}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    move-object/from16 v18, v8

    goto :goto_b

    :cond_d
    const/4 v13, 0x0

    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    const-string v15, "iconUri"

    iget-object v13, v3, LJ1/b;->a:Ljava/lang/String;

    invoke-virtual {v14, v15, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v13, v3, LJ1/b;->b:LJ1/c;

    const-string v15, "appPackage"

    if-nez v13, :cond_e

    move-object/from16 v18, v8

    const/4 v8, 0x0

    invoke-virtual {v14, v15, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_9

    :cond_e
    move-object/from16 v18, v8

    const/4 v8, 0x0

    invoke-virtual {v13}, LJ1/c;->b()Landroid/os/Bundle;

    move-result-object v13

    invoke-virtual {v14, v15, v13}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_9
    iget-object v3, v3, LJ1/b;->c:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/ContentParcelables$AppIconType;

    const-string v13, "appIconType"

    if-nez v3, :cond_f

    invoke-virtual {v14, v13, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_a

    :cond_f
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string v15, "value"

    iget v3, v3, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/ContentParcelables$AppIconType;->value:I

    invoke-virtual {v8, v15, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v14, v13, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_a
    invoke-virtual {v12, v11, v14}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_b
    iget-object v3, v10, LJ1/f;->c:LJ1/c;

    const-string v8, "executionInfo"

    if-nez v3, :cond_10

    const/4 v11, 0x0

    invoke-virtual {v12, v8, v11}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_c

    :cond_10
    invoke-virtual {v3}, LJ1/c;->b()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v12, v8, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_c
    const-string v3, "confScore"

    iget v8, v10, LJ1/f;->d:F

    invoke-virtual {v12, v3, v8}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v17

    move-object/from16 v8, v18

    goto/16 :goto_7

    :cond_11
    move-object/from16 v17, v3

    invoke-virtual {v9, v7, v6}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :goto_d
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_e
    move-object/from16 v7, v16

    move-object/from16 v3, v17

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_12
    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :goto_f
    iget-object v2, v0, LJ1/e;->d:LJ1/J;

    const-string v3, "stats"

    if-nez v2, :cond_13

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_10

    :cond_13
    const/4 v5, 0x0

    invoke-virtual {v2}, LJ1/J;->a()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_10
    iget-object v2, v0, LJ1/e;->e:LJ1/z;

    const-string v3, "debugInfo"

    if-nez v2, :cond_14

    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_11

    :cond_14
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_11
    iget-object v2, v0, LJ1/e;->f:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, LJ1/e;->g:LJ1/I;

    const-string v3, "setupInfo"

    if-nez v2, :cond_15

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_12

    :cond_15
    invoke-virtual {v2}, LJ1/I;->a()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_12
    const-string v2, "contentUri"

    iget-object v0, v0, LJ1/e;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
