.class public Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(ZLandroid/window/TransitionInfo$Change;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->lambda$wrapNonApps$0(ZLandroid/window/TransitionInfo$Change;)Z

    move-result p0

    return p0
.end method

.method private static lambda$wrapNonApps$0(ZLandroid/window/TransitionInfo$Change;)Z
    .locals 4

    const/4 v0, 0x1

    const/16 v1, 0x200

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-virtual {p1, v2}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, v1}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-virtual {p1, v2}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1, v1}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result p0

    if-nez p0, :cond_0

    :goto_0
    return v0
.end method

.method private static wrap(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;Ljava/util/function/Predicate;)[Landroid/view/RemoteAnimationTarget;
    .locals 47

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_23

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v7

    const/4 v8, 0x6

    const/4 v9, 0x1

    if-ne v7, v8, :cond_1

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v7

    const/high16 v8, 0x100000

    and-int/2addr v7, v8

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getLastParent()Landroid/window/WindowContainerToken;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getLastParent()Landroid/window/WindowContainerToken;

    move-result-object v7

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    move v7, v9

    goto :goto_1

    :cond_1
    move v7, v4

    :goto_1
    if-eqz v7, :cond_2

    move-object/from16 v7, p3

    goto/16 :goto_14

    :cond_2
    move-object/from16 v7, p3

    invoke-interface {v7, v6}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_22

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    sub-int v17, v8, v5

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v8

    const/4 v11, 0x2

    const/4 v12, 0x3

    if-eqz v8, :cond_3

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v8

    and-int/2addr v8, v11

    if-eqz v8, :cond_3

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v8

    goto/16 :goto_d

    :cond_3
    invoke-static {v6, v0}, LH1/g;->b(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)I

    move-result v8

    new-instance v13, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v13}, Landroid/view/SurfaceControl$Builder;-><init>()V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/SurfaceControl;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "_transition-leash"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v13

    invoke-virtual {v13, v4}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v13

    invoke-virtual {v0, v8}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v8

    invoke-virtual {v8}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v8

    invoke-virtual {v13, v8}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    sub-int v13, v13, v17

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo;->getType()I

    move-result v14

    const/4 v15, 0x7

    if-eq v14, v9, :cond_5

    if-eq v14, v12, :cond_5

    if-ne v14, v15, :cond_4

    goto :goto_2

    :cond_4
    move v14, v4

    goto :goto_3

    :cond_5
    :goto_2
    move v14, v9

    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v10

    invoke-static {v6, v0}, LH1/g;->b(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)I

    move-result v11

    invoke-virtual {v0, v11}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v15

    invoke-virtual {v1, v8, v15}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    if-ne v10, v9, :cond_6

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v15

    goto :goto_4

    :cond_6
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v15

    :goto_4
    iget v12, v15, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v11}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/window/TransitionInfo$Root;->getOffset()Landroid/graphics/Point;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v12, v9

    int-to-float v9, v12

    iget v12, v15, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v11}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v11

    invoke-virtual {v11}, Landroid/window/TransitionInfo$Root;->getOffset()Landroid/graphics/Point;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Point;->y:I

    sub-int/2addr v12, v11

    int-to-float v11, v12

    invoke-virtual {v1, v8, v9, v11}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-static {v6}, LH1/g;->a(Landroid/window/TransitionInfo$Change;)Z

    move-result v9

    const/4 v11, 0x0

    if-eqz v9, :cond_a

    const/4 v4, 0x1

    if-eq v10, v4, :cond_8

    const/4 v4, 0x3

    if-eq v10, v4, :cond_8

    const/4 v4, 0x7

    if-ne v10, v4, :cond_7

    goto :goto_5

    :cond_7
    const/4 v4, 0x0

    goto :goto_6

    :cond_8
    :goto_5
    const/4 v4, 0x1

    :goto_6
    if-eqz v4, :cond_9

    invoke-virtual {v1, v8, v11}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_9
    invoke-virtual {v1, v8, v11, v11}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    const v4, 0x7fffffff

    invoke-virtual {v1, v8, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto/16 :goto_c

    :cond_a
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v9

    const/4 v12, 0x2

    and-int/2addr v9, v12

    if-eqz v9, :cond_d

    const/4 v9, 0x1

    if-eq v10, v9, :cond_c

    const/4 v9, 0x3

    if-ne v10, v9, :cond_b

    goto :goto_7

    :cond_b
    neg-int v4, v4

    sub-int/2addr v4, v13

    invoke-virtual {v1, v8, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto/16 :goto_c

    :cond_c
    :goto_7
    neg-int v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/2addr v9, v4

    sub-int/2addr v9, v13

    invoke-virtual {v1, v8, v9}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_c

    :cond_d
    const/4 v9, 0x1

    if-eq v10, v9, :cond_f

    const/4 v9, 0x3

    if-eq v10, v9, :cond_f

    const/4 v9, 0x7

    if-ne v10, v9, :cond_e

    goto :goto_8

    :cond_e
    const/4 v9, 0x0

    goto :goto_9

    :cond_f
    :goto_8
    const/4 v9, 0x1

    :goto_9
    if-eqz v9, :cond_11

    if-eqz v14, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/2addr v9, v4

    sub-int/2addr v9, v13

    invoke-virtual {v1, v8, v9}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_16

    invoke-virtual {v1, v8, v11}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_c

    :cond_10
    sub-int/2addr v4, v13

    invoke-virtual {v1, v8, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_c

    :cond_11
    const/4 v9, 0x2

    if-eq v10, v9, :cond_13

    const/4 v9, 0x4

    if-ne v10, v9, :cond_12

    goto :goto_a

    :cond_12
    const/4 v9, 0x0

    goto :goto_b

    :cond_13
    :goto_a
    const/4 v9, 0x1

    :goto_b
    if-eqz v9, :cond_15

    if-eqz v14, :cond_14

    sub-int/2addr v4, v13

    invoke-virtual {v1, v8, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_c

    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/2addr v9, v4

    sub-int/2addr v9, v13

    invoke-virtual {v1, v8, v9}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_c

    :cond_15
    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/2addr v9, v4

    sub-int/2addr v9, v13

    invoke-virtual {v1, v8, v9}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_16
    :goto_c
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    invoke-virtual {v1, v4, v8}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v1, v4, v9}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-static {v6}, LH1/g;->a(Landroid/window/TransitionInfo$Change;)Z

    move-result v4

    if-nez v4, :cond_17

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    invoke-virtual {v1, v4, v11, v11}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_17
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    const/4 v9, 0x0

    invoke-virtual {v1, v4, v9}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :goto_d
    if-eqz v2, :cond_18

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    invoke-virtual {v2, v4, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    invoke-static {v6}, LH1/g;->a(Landroid/window/TransitionInfo$Change;)Z

    move-result v4

    if-eqz v4, :cond_1b

    new-instance v4, Landroid/view/RemoteAnimationTarget;

    const/16 v30, -0x1

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_1a

    const/4 v10, 0x2

    if-eq v9, v10, :cond_19

    const/4 v10, 0x3

    if-eq v9, v10, :cond_1a

    const/4 v10, 0x4

    if-eq v9, v10, :cond_19

    const/16 v31, 0x2

    goto :goto_e

    :cond_19
    const/16 v31, 0x1

    goto :goto_e

    :cond_1a
    const/16 v31, 0x0

    :goto_e
    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const v36, 0x7fffffff

    new-instance v9, Landroid/graphics/Point;

    move-object/from16 v37, v9

    const/4 v10, 0x0

    invoke-direct {v9, v10, v10}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v38

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v39

    new-instance v6, Landroid/app/WindowConfiguration;

    move-object/from16 v40, v6

    invoke-direct {v6}, Landroid/app/WindowConfiguration;-><init>()V

    const/16 v41, 0x1

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x7f2

    move-object/from16 v29, v4

    move-object/from16 v32, v8

    invoke-direct/range {v29 .. v46}, Landroid/view/RemoteAnimationTarget;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;ZLandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;ZI)V

    move-object v8, v4

    const/4 v4, 0x0

    goto/16 :goto_13

    :cond_1b
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    if-eqz v4, :cond_1c

    iget v9, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-boolean v10, v4, Landroid/app/ActivityManager$RunningTaskInfo;->isRunning:Z

    const/4 v11, 0x1

    xor-int/2addr v10, v11

    iget-object v11, v4, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v11, v11, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    move/from16 v22, v10

    move-object/from16 v21, v11

    move v11, v9

    goto :goto_f

    :cond_1c
    new-instance v9, Landroid/app/WindowConfiguration;

    invoke-direct {v9}, Landroid/app/WindowConfiguration;-><init>()V

    const/4 v10, -0x1

    move-object/from16 v21, v9

    move v11, v10

    const/16 v22, 0x1

    :goto_f
    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Point;->x:I

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndRelOffset()Landroid/graphics/Point;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Point;->y:I

    invoke-virtual {v9, v10, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    new-instance v14, Landroid/view/RemoteAnimationTarget;

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v10

    const/4 v13, 0x1

    if-eq v10, v13, :cond_1f

    const/4 v12, 0x2

    if-eq v10, v12, :cond_1d

    const/4 v15, 0x3

    if-eq v10, v15, :cond_1f

    const/4 v15, 0x4

    if-eq v10, v15, :cond_1e

    goto :goto_10

    :cond_1d
    const/4 v15, 0x4

    :cond_1e
    move v12, v13

    goto :goto_10

    :cond_1f
    const/4 v15, 0x4

    const/4 v12, 0x0

    :goto_10
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v10

    and-int/2addr v10, v15

    if-eqz v10, :cond_20

    move/from16 v19, v13

    goto :goto_11

    :cond_20
    const/16 v19, 0x0

    :goto_11
    const/4 v15, 0x0

    new-instance v10, Landroid/graphics/Rect;

    move-object/from16 v16, v10

    const/4 v15, 0x0

    invoke-direct {v10, v15, v15, v15, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v18, 0x0

    new-instance v10, Landroid/graphics/Rect;

    move-object/from16 v20, v10

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v13

    invoke-direct {v10, v13}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/16 v23, 0x0

    new-instance v10, Landroid/graphics/Rect;

    move-object/from16 v24, v10

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v13

    invoke-direct {v10, v13}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getAllowEnterPip()Z

    move-result v26

    const/16 v27, -0x1

    move-object v10, v14

    const/16 v28, 0x1

    move-object v13, v8

    move-object v8, v14

    move/from16 v14, v19

    move-object/from16 v19, v9

    move-object/from16 v25, v4

    move v4, v15

    const/4 v15, 0x0

    invoke-direct/range {v10 .. v27}, Landroid/view/RemoteAnimationTarget;-><init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/app/WindowConfiguration;ZLandroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;ZI)V

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v9

    and-int/lit16 v9, v9, 0x800

    if-eqz v9, :cond_21

    move/from16 v9, v28

    goto :goto_12

    :cond_21
    move v9, v4

    :goto_12
    invoke-virtual {v8, v9}, Landroid/view/RemoteAnimationTarget;->setWillShowImeOnTarget(Z)V

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    move-result v9

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v8, v9}, Landroid/view/RemoteAnimationTarget;->setRotationChange(I)V

    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getBackgroundColor()I

    move-result v6

    iput v6, v8, Landroid/view/RemoteAnimationTarget;->backgroundColor:I

    :goto_13
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_22
    :goto_14
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_23
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/view/RemoteAnimationTarget;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/RemoteAnimationTarget;

    return-object v0
.end method

.method public static wrapApps(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)[Landroid/view/RemoteAnimationTarget;
    .locals 1

    new-instance v0, LH1/f;

    invoke-direct {v0}, LH1/f;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->wrap(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;Ljava/util/function/Predicate;)[Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    return-object p0
.end method

.method public static wrapNonApps(Landroid/window/TransitionInfo;ZLandroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)[Landroid/view/RemoteAnimationTarget;
    .locals 1

    new-instance v0, Lcom/android/systemui/shared/system/c;

    invoke-direct {v0, p1}, Lcom/android/systemui/shared/system/c;-><init>(Z)V

    invoke-static {p0, p2, p3, v0}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->wrap(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;Ljava/util/function/Predicate;)[Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    return-object p0
.end method
