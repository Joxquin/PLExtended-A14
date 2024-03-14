.class public final LK1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;IJLandroid/os/Bundle;LJ1/t;LJ1/e;)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "PackageName"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "ActivityName"

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "TaskId"

    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "CaptureTimestampMs"

    invoke-virtual {v0, p0, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p0, "AssistBundle"

    invoke-virtual {v0, p0, p5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 p0, 0x0

    const-string p1, "Contents"

    if-nez p7, :cond_0

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p7}, LJ1/e;->a()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    const-string p1, "InteractionContext"

    if-nez p6, :cond_1

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p6}, LJ1/t;->a()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_1
    const-string p0, "Version"

    const/4 p1, 0x4

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "BundleTypedVersion"

    const/4 p1, 0x3

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static b(LJ1/n;)Landroid/os/Bundle;
    .locals 26

    move-object/from16 v0, p0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x6

    const/4 v3, 0x0

    const-string v4, "FeedbackBatch"

    if-nez v0, :cond_0

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    move-object v0, v1

    goto/16 :goto_21

    :cond_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iget-object v6, v0, LJ1/n;->a:Ljava/util/List;

    const-string v7, "overviewSessionId"

    const-string v8, "feedback"

    if-nez v6, :cond_1

    invoke-virtual {v5, v8, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    move-object/from16 v17, v1

    move-object/from16 v18, v4

    move-object v2, v5

    goto/16 :goto_20

    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    iget-object v9, v0, LJ1/n;->a:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v9, v0, LJ1/n;->a:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_26

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, LJ1/m;

    if-nez v10, :cond_2

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v17, v1

    move-object v0, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object v1, v6

    move-object/from16 v16, v9

    goto/16 :goto_1f

    :cond_2
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    iget-object v12, v10, LJ1/m;->a:Ljava/lang/Object;

    instance-of v12, v12, LJ1/o;

    const-string v13, "value"

    const-string v15, "taskSnapshotSessionId"

    const-string v14, "userInteraction"

    const-string v3, "feedback#tag"

    if-eqz v12, :cond_5

    invoke-virtual {v11, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v12, v10, LJ1/m;->a:Ljava/lang/Object;

    check-cast v12, LJ1/o;

    if-nez v12, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v11, v8, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    :cond_3
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v16, v9

    iget-object v9, v12, LJ1/o;->a:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$OverviewFeedback$OverviewInteraction;

    if-nez v9, :cond_4

    move-object/from16 v17, v1

    const/4 v1, 0x0

    invoke-virtual {v2, v14, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_4
    move-object/from16 v17, v1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget v9, v9, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$OverviewFeedback$OverviewInteraction;->value:I

    invoke-virtual {v1, v13, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v2, v14, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_1
    const-string v1, "overviewPresentationMode"

    iget v9, v12, LJ1/o;->b:I

    invoke-virtual {v2, v1, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "numSelectionsSuggested"

    const/4 v9, 0x0

    invoke-virtual {v2, v1, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "numSelectionsInitialized"

    invoke-virtual {v2, v1, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, v12, LJ1/o;->c:Ljava/lang/String;

    invoke-virtual {v2, v7, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v2, v15, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "primaryTaskAppComponentName"

    invoke-virtual {v2, v9, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "taskAppComponentNameList"

    invoke-virtual {v2, v9, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v11, v8, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_3

    :cond_5
    :goto_2
    move-object/from16 v17, v1

    move-object/from16 v16, v9

    :goto_3
    iget-object v1, v10, LJ1/m;->a:Ljava/lang/Object;

    instance-of v1, v1, LJ1/r;

    const-string v2, "interactionType"

    const-string v9, "selectionSessionId"

    const-string v12, "interactionSessionId"

    move-object/from16 v18, v4

    const-string v4, "selection"

    const-string v0, "selectedEntity"

    if-eqz v1, :cond_d

    const/4 v1, 0x7

    invoke-virtual {v11, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, v10, LJ1/m;->a:Ljava/lang/Object;

    check-cast v1, LJ1/r;

    if-nez v1, :cond_6

    move-object/from16 v19, v5

    const/4 v5, 0x0

    invoke-virtual {v11, v8, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    move-object/from16 v23, v0

    move-object/from16 v21, v3

    move-object/from16 v20, v6

    goto/16 :goto_b

    :cond_6
    move-object/from16 v19, v5

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v20, v6

    iget-object v6, v1, LJ1/r;->a:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionType;

    move-object/from16 v21, v3

    const-string v3, "type"

    if-nez v6, :cond_7

    move-object/from16 v22, v10

    const/4 v10, 0x0

    invoke-virtual {v5, v3, v10}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_4

    :cond_7
    move-object/from16 v22, v10

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    iget v6, v6, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionType;->value:I

    invoke-virtual {v10, v13, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v5, v3, v10}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_4
    iget-object v3, v1, LJ1/r;->b:LJ1/B;

    if-nez v3, :cond_8

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_5

    :cond_8
    const/4 v6, 0x0

    invoke-virtual {v3}, LJ1/B;->a()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v5, v0, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_5
    iget-object v3, v1, LJ1/r;->c:LJ1/q;

    if-nez v3, :cond_9

    invoke-virtual {v5, v4, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    move-object/from16 v23, v0

    goto :goto_6

    :cond_9
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v10, "smartSelectionSingleWord"

    move-object/from16 v23, v0

    iget-boolean v0, v3, LJ1/q;->a:Z

    invoke-virtual {v6, v10, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "userSelectionSingleWord"

    iget-boolean v10, v3, LJ1/q;->b:Z

    invoke-virtual {v6, v0, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "selectionModified"

    iget-boolean v10, v3, LJ1/q;->c:Z

    invoke-virtual {v6, v0, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "smartSelectionRangeStart"

    iget v10, v3, LJ1/q;->d:I

    invoke-virtual {v6, v0, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "smartSelectionRangeEnd"

    iget v10, v3, LJ1/q;->e:I

    invoke-virtual {v6, v0, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "userSelectionRangeStart"

    iget v10, v3, LJ1/q;->f:I

    invoke-virtual {v6, v0, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "userSelectionRangeEnd"

    iget v3, v3, LJ1/q;->g:I

    invoke-virtual {v6, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v5, v4, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_6
    iget-object v0, v1, LJ1/r;->d:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionInteraction;

    if-nez v0, :cond_a

    const/4 v3, 0x0

    invoke-virtual {v5, v14, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_7

    :cond_a
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iget v0, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionInteraction;->value:I

    invoke-virtual {v3, v13, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v5, v14, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_7
    const-string v0, "selectionPresentationMode"

    iget v3, v1, LJ1/r;->e:I

    invoke-virtual {v5, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, v1, LJ1/r;->f:Ljava/lang/String;

    invoke-virtual {v5, v7, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, LJ1/r;->g:Ljava/lang/String;

    invoke-virtual {v5, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, LJ1/r;->h:Ljava/lang/String;

    invoke-virtual {v5, v12, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, LJ1/r;->i:Ljava/lang/String;

    invoke-virtual {v5, v9, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, LJ1/r;->j:LJ1/e;

    const-string v3, "screenContents"

    if-nez v0, :cond_b

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_8

    :cond_b
    const/4 v6, 0x0

    invoke-virtual {v0}, LJ1/e;->a()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_8
    iget-object v0, v1, LJ1/r;->k:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$InteractionType;

    if-nez v0, :cond_c

    invoke-virtual {v5, v2, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_9

    :cond_c
    invoke-virtual {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$InteractionType;->c()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_9
    const-string v0, "selectionId"

    iget-object v1, v1, LJ1/r;->l:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v8, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_a

    :cond_d
    move-object/from16 v23, v0

    move-object/from16 v21, v3

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v22, v10

    :goto_a
    move-object/from16 v10, v22

    :goto_b
    iget-object v0, v10, LJ1/m;->a:Ljava/lang/Object;

    instance-of v0, v0, LJ1/i;

    const-string v1, "selectionType"

    if-eqz v0, :cond_1b

    const/16 v0, 0x8

    move-object/from16 v3, v21

    invoke-virtual {v11, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, v10, LJ1/m;->a:Ljava/lang/Object;

    check-cast v0, LJ1/i;

    if-nez v0, :cond_e

    const/4 v5, 0x0

    invoke-virtual {v11, v8, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    move-object/from16 v22, v1

    move-object/from16 v21, v3

    goto/16 :goto_18

    :cond_e
    const/4 v5, 0x0

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v21, v3

    iget-object v3, v0, LJ1/i;->a:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionType;

    if-nez v3, :cond_f

    invoke-virtual {v6, v1, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_c

    :cond_f
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iget v3, v3, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$SelectionFeedback$SelectionType;->value:I

    invoke-virtual {v5, v13, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v6, v1, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_c
    iget-object v3, v0, LJ1/i;->b:LJ1/B;

    if-nez v3, :cond_10

    move-object/from16 v22, v1

    move-object/from16 v1, v23

    const/4 v5, 0x0

    invoke-virtual {v6, v1, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_d

    :cond_10
    move-object/from16 v22, v1

    move-object/from16 v1, v23

    const/4 v5, 0x0

    invoke-virtual {v3}, LJ1/B;->a()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v6, v1, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_d
    iget-object v3, v0, LJ1/i;->c:Ljava/util/List;

    move-object/from16 v23, v1

    const-string v1, "actionShown"

    if-nez v3, :cond_11

    invoke-virtual {v6, v1, v5}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_10

    :cond_11
    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, v0, LJ1/i;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v5, v0, LJ1/i;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_13

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, LJ1/w;

    if-nez v24, :cond_12

    move-object/from16 v25, v5

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_12
    move-object/from16 v25, v5

    invoke-virtual/range {v24 .. v24}, LJ1/w;->a()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_f
    move-object/from16 v5, v25

    goto :goto_e

    :cond_13
    invoke-virtual {v6, v1, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :goto_10
    iget-object v1, v0, LJ1/i;->d:LJ1/w;

    const-string v3, "invokedAction"

    if-nez v1, :cond_14

    const/4 v5, 0x0

    invoke-virtual {v6, v3, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_11

    :cond_14
    const/4 v5, 0x0

    invoke-virtual {v1}, LJ1/w;->a()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v6, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_11
    iget-object v1, v0, LJ1/i;->e:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ActionFeedback$ActionInteraction;

    if-nez v1, :cond_15

    invoke-virtual {v6, v14, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_12

    :cond_15
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iget v1, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$ActionFeedback$ActionInteraction;->value:I

    invoke-virtual {v3, v13, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v6, v14, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_12
    const-string v1, "actionPresentationMode"

    const/4 v3, 0x0

    invoke-virtual {v6, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v6, v4, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v1, v0, LJ1/i;->f:Ljava/lang/String;

    invoke-virtual {v6, v7, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, LJ1/i;->g:Ljava/lang/String;

    invoke-virtual {v6, v15, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, LJ1/i;->h:Ljava/lang/String;

    invoke-virtual {v6, v12, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, LJ1/i;->i:Ljava/lang/String;

    invoke-virtual {v6, v9, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "verticalTypeName"

    iget-object v3, v0, LJ1/i;->j:Ljava/lang/String;

    invoke-virtual {v6, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, LJ1/i;->k:Ljava/util/List;

    const-string v3, "actionMenuItems"

    if-nez v1, :cond_16

    const/4 v1, 0x0

    invoke-virtual {v6, v3, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    move-object v5, v1

    goto :goto_15

    :cond_16
    new-instance v1, Ljava/util/ArrayList;

    iget-object v5, v0, LJ1/i;->k:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v5, v0, LJ1/i;->k:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_13
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_18

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LJ1/k;

    if-nez v9, :cond_17

    move-object/from16 v24, v5

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_17
    move-object/from16 v24, v5

    const/4 v5, 0x0

    invoke-virtual {v9}, LJ1/k;->a()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_14
    move-object/from16 v5, v24

    goto :goto_13

    :cond_18
    const/4 v5, 0x0

    invoke-virtual {v6, v3, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :goto_15
    iget-object v1, v0, LJ1/i;->l:LJ1/k;

    const-string v3, "invokedActionMenuItem"

    if-nez v1, :cond_19

    invoke-virtual {v6, v3, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_16

    :cond_19
    invoke-virtual {v1}, LJ1/k;->a()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v6, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_16
    iget-object v0, v0, LJ1/i;->m:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$InteractionType;

    if-nez v0, :cond_1a

    invoke-virtual {v6, v2, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_17

    :cond_1a
    invoke-virtual {v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/SuggestParcelables$InteractionType;->c()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v6, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_17
    invoke-virtual {v11, v8, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_18

    :cond_1b
    move-object/from16 v22, v1

    :goto_18
    iget-object v0, v10, LJ1/m;->a:Ljava/lang/Object;

    instance-of v0, v0, LJ1/j;

    if-eqz v0, :cond_1d

    const/16 v0, 0x9

    move-object/from16 v1, v21

    invoke-virtual {v11, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, v10, LJ1/m;->a:Ljava/lang/Object;

    check-cast v0, LJ1/j;

    if-nez v0, :cond_1c

    const/4 v0, 0x0

    invoke-virtual {v11, v8, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_19

    :cond_1c
    const/4 v0, 0x0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v3, v22

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    move-object/from16 v3, v23

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v3, "actionGroupShown"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v3, "actionGroup"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v2, v14, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v3, "actionGroupPresentationMode"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v11, v8, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_19

    :cond_1d
    move-object/from16 v1, v21

    :goto_19
    iget-object v0, v10, LJ1/m;->a:Ljava/lang/Object;

    instance-of v0, v0, LJ1/s;

    if-eqz v0, :cond_20

    const/16 v0, 0xa

    invoke-virtual {v11, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, v10, LJ1/m;->a:Ljava/lang/Object;

    check-cast v0, LJ1/s;

    if-nez v0, :cond_1e

    const/4 v2, 0x0

    invoke-virtual {v11, v8, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1b

    :cond_1e
    const/4 v2, 0x0

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iget-object v4, v0, LJ1/s;->a:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$TaskSnapshotFeedback$TaskSnapshotInteraction;

    if-nez v4, :cond_1f

    invoke-virtual {v3, v14, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1a

    :cond_1f
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget v4, v4, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/FeedbackParcelables$TaskSnapshotFeedback$TaskSnapshotInteraction;->value:I

    invoke-virtual {v2, v13, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v3, v14, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_1a
    iget-object v2, v0, LJ1/s;->b:Ljava/lang/String;

    invoke-virtual {v3, v7, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, LJ1/s;->c:Ljava/lang/String;

    invoke-virtual {v3, v15, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "taskAppComponentName"

    iget-object v4, v0, LJ1/s;->d:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, LJ1/s;->e:Ljava/lang/String;

    invoke-virtual {v3, v12, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v8, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_20
    :goto_1b
    iget-object v0, v10, LJ1/m;->a:Ljava/lang/Object;

    instance-of v0, v0, LJ1/p;

    if-eqz v0, :cond_22

    const/16 v0, 0xb

    invoke-virtual {v11, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, v10, LJ1/m;->a:Ljava/lang/Object;

    check-cast v0, LJ1/p;

    if-nez v0, :cond_21

    const/4 v0, 0x0

    invoke-virtual {v11, v8, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1c

    :cond_21
    const/4 v0, 0x0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "screenshotId"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v8, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_22
    :goto_1c
    iget-object v0, v10, LJ1/m;->a:Ljava/lang/Object;

    instance-of v0, v0, LJ1/l;

    if-eqz v0, :cond_24

    const/16 v0, 0xc

    invoke-virtual {v11, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, v10, LJ1/m;->a:Ljava/lang/Object;

    check-cast v0, LJ1/l;

    if-nez v0, :cond_23

    const/4 v0, 0x0

    invoke-virtual {v11, v8, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1d

    :cond_23
    const/4 v0, 0x0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "feedbackType"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v2, "itemId"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "text"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "actionFeedback"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v11, v8, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1d

    :cond_24
    const/4 v0, 0x0

    :goto_1d
    const-string v1, "id"

    invoke-virtual {v11, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "timestampMs"

    iget-wide v2, v10, LJ1/m;->b:J

    invoke-virtual {v11, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "suggestionAction"

    invoke-virtual {v11, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v1, v10, LJ1/m;->c:LJ1/t;

    const-string v2, "interactionContext"

    if-nez v1, :cond_25

    invoke-virtual {v11, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1e

    :cond_25
    invoke-virtual {v1}, LJ1/t;->a()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v11, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_1e
    move-object/from16 v1, v20

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1f
    move-object v3, v0

    move-object v6, v1

    move-object/from16 v9, v16

    move-object/from16 v1, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    const/4 v2, 0x6

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_26
    move-object/from16 v17, v1

    move-object/from16 v18, v4

    move-object v2, v5

    move-object v1, v6

    invoke-virtual {v2, v8, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :goto_20
    const-string v0, "screenSessionId"

    move-object/from16 v1, p0

    iget-wide v3, v1, LJ1/n;->b:J

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, v1, LJ1/n;->c:Ljava/lang/String;

    invoke-virtual {v2, v7, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_21
    const-string v1, "Version"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "BundleTypedVersion"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;IJLJ1/t;Landroid/os/Bundle;LJ1/v;)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "PackageName"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "ActivityName"

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "TaskId"

    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "CaptureTimestampMs"

    invoke-virtual {v0, p0, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p5}, LJ1/t;->a()Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "InteractionContext"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p0, "AssistBundle"

    invoke-virtual {v0, p0, p6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 p0, 0x0

    const-string p1, "ParsedViewHierarchy"

    if-nez p7, :cond_0

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p3, "acquisitionStartTime"

    const-wide/16 p4, 0x0

    invoke-virtual {p2, p3, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p3, "acquisitionEndTime"

    invoke-virtual {p2, p3, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p3, "isHomeActivity"

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p3, "windows"

    invoke-virtual {p2, p3, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string p3, "hasKnownIssues"

    invoke-virtual {p2, p3, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p3, "packageName"

    invoke-virtual {p2, p3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "activityClassName"

    invoke-virtual {p2, p3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "insetsRect"

    invoke-virtual {p2, p3, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    const-string p0, "Version"

    const/4 p1, 0x4

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "BundleTypedVersion"

    const/4 p1, 0x3

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method
