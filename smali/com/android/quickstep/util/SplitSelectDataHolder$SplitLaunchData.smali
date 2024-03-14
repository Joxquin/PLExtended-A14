.class public final Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private initialPendingIntent:Landroid/app/PendingIntent;

.field private initialShortcut:Landroid/content/pm/ShortcutInfo;

.field private final initialStagePosition:I

.field private initialTaskId:I

.field private initialUserId:I

.field private itemInfo:Lcom/android/launcher3/model/data/ItemInfo;

.field private secondPendingIntent:Landroid/app/PendingIntent;

.field private secondShortcut:Landroid/content/pm/ShortcutInfo;

.field private secondTaskId:I

.field private secondUserId:I

.field private splitEvent:Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

.field private final splitLaunchType:I


# direct methods
.method public constructor <init>(IIILandroid/app/PendingIntent;Landroid/app/PendingIntent;IILandroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/StatsLogManager$EventEnum;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->splitLaunchType:I

    .line 3
    iput p2, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->initialTaskId:I

    .line 4
    iput p3, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->secondTaskId:I

    .line 5
    iput-object p4, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->initialPendingIntent:Landroid/app/PendingIntent;

    .line 6
    iput-object p5, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->secondPendingIntent:Landroid/app/PendingIntent;

    .line 7
    iput p6, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->initialUserId:I

    .line 8
    iput p7, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->secondUserId:I

    .line 9
    iput-object p8, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->initialShortcut:Landroid/content/pm/ShortcutInfo;

    .line 10
    iput-object p9, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->secondShortcut:Landroid/content/pm/ShortcutInfo;

    .line 11
    iput-object p10, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->itemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    .line 12
    iput-object p11, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->splitEvent:Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    .line 13
    iput p12, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->initialStagePosition:I

    return-void
.end method

.method public synthetic constructor <init>(IIILandroid/app/PendingIntent;Landroid/app/PendingIntent;IILandroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/StatsLogManager$EventEnum;IILkotlin/jvm/internal/f;)V
    .locals 13

    move/from16 v0, p13

    and-int/lit8 v1, v0, 0x2

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move/from16 v3, p3

    :goto_1
    and-int/lit8 v4, v0, 0x8

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    move-object v4, v5

    goto :goto_2

    :cond_2
    move-object/from16 v4, p4

    :goto_2
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_3

    move-object v6, v5

    goto :goto_3

    :cond_3
    move-object/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_4

    move v7, v2

    goto :goto_4

    :cond_4
    move/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_5

    move v8, v2

    goto :goto_5

    :cond_5
    move/from16 v8, p7

    :goto_5
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_6

    move-object v9, v5

    goto :goto_6

    :cond_6
    move-object/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_7

    move-object v10, v5

    goto :goto_7

    :cond_7
    move-object/from16 v10, p9

    :goto_7
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_8

    move-object v11, v5

    goto :goto_8

    :cond_8
    move-object/from16 v11, p10

    :goto_8
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_9

    goto :goto_9

    :cond_9
    move-object/from16 v5, p11

    :goto_9
    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_a

    goto :goto_a

    :cond_a
    move/from16 v2, p12

    :goto_a
    move-object p2, p0

    move/from16 p3, p1

    move/from16 p4, v1

    move/from16 p5, v3

    move-object/from16 p6, v4

    move-object/from16 p7, v6

    move/from16 p8, v7

    move/from16 p9, v8

    move-object/from16 p10, v9

    move-object/from16 p11, v10

    move-object/from16 p12, v11

    move-object/from16 p13, v5

    move/from16 p14, v2

    .line 14
    invoke-direct/range {p2 .. p14}, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;-><init>(IIILandroid/app/PendingIntent;Landroid/app/PendingIntent;IILandroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/StatsLogManager$EventEnum;I)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;IIILandroid/app/PendingIntent;Landroid/app/PendingIntent;IILandroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/StatsLogManager$EventEnum;IILjava/lang/Object;)Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;
    .locals 13

    move-object v0, p0

    move/from16 v1, p13

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->splitLaunchType:I

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->initialTaskId:I

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget v4, v0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->secondTaskId:I

    goto :goto_2

    :cond_2
    move/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->initialPendingIntent:Landroid/app/PendingIntent;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->secondPendingIntent:Landroid/app/PendingIntent;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget v7, v0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->initialUserId:I

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget v8, v0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->secondUserId:I

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->initialShortcut:Landroid/content/pm/ShortcutInfo;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->secondShortcut:Landroid/content/pm/ShortcutInfo;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->itemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->splitEvent:Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_b

    iget v1, v0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->initialStagePosition:I

    goto :goto_b

    :cond_b
    move/from16 v1, p12

    :goto_b
    move p1, v2

    move p2, v3

    move/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move/from16 p12, v1

    invoke-virtual/range {p0 .. p12}, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->copy(IIILandroid/app/PendingIntent;Landroid/app/PendingIntent;IILandroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/StatsLogManager$EventEnum;I)Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->splitLaunchType:I

    return p0
.end method

.method public final component10()Lcom/android/launcher3/model/data/ItemInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->itemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    return-object p0
.end method

.method public final component11()Lcom/android/launcher3/logging/StatsLogManager$EventEnum;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->splitEvent:Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    return-object p0
.end method

.method public final component12()I
    .locals 0

    iget p0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->initialStagePosition:I

    return p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->initialTaskId:I

    return p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->secondTaskId:I

    return p0
.end method

.method public final component4()Landroid/app/PendingIntent;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->initialPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public final component5()Landroid/app/PendingIntent;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->secondPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public final component6()I
    .locals 0

    iget p0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->initialUserId:I

    return p0
.end method

.method public final component7()I
    .locals 0

    iget p0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->secondUserId:I

    return p0
.end method

.method public final component8()Landroid/content/pm/ShortcutInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->initialShortcut:Landroid/content/pm/ShortcutInfo;

    return-object p0
.end method

.method public final component9()Landroid/content/pm/ShortcutInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->secondShortcut:Landroid/content/pm/ShortcutInfo;

    return-object p0
.end method

.method public final copy(IIILandroid/app/PendingIntent;Landroid/app/PendingIntent;IILandroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/StatsLogManager$EventEnum;I)Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;
    .locals 14

    new-instance v13, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;

    move-object v0, v13

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;-><init>(IIILandroid/app/PendingIntent;Landroid/app/PendingIntent;IILandroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/StatsLogManager$EventEnum;I)V

    return-object v13
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;

    iget v1, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->splitLaunchType:I

    iget v3, p1, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->splitLaunchType:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->initialTaskId:I

    iget v3, p1, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->initialTaskId:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->secondTaskId:I

    iget v3, p1, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->secondTaskId:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->initialPendingIntent:Landroid/app/PendingIntent;

    iget-object v3, p1, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->initialPendingIntent:Landroid/app/PendingIntent;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->secondPendingIntent:Landroid/app/PendingIntent;

    iget-object v3, p1, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->secondPendingIntent:Landroid/app/PendingIntent;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->initialUserId:I

    iget v3, p1, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->initialUserId:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->secondUserId:I

    iget v3, p1, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->secondUserId:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->initialShortcut:Landroid/content/pm/ShortcutInfo;

    iget-object v3, p1, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->initialShortcut:Landroid/content/pm/ShortcutInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->secondShortcut:Landroid/content/pm/ShortcutInfo;

    iget-object v3, p1, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->secondShortcut:Landroid/content/pm/ShortcutInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->itemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v3, p1, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->itemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->splitEvent:Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    iget-object v3, p1, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->splitEvent:Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget p0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->initialStagePosition:I

    iget p1, p1, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->initialStagePosition:I

    if-eq p0, p1, :cond_d

    return v2

    :cond_d
    return v0
.end method

.method public final getInitialPendingIntent()Landroid/app/PendingIntent;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->initialPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public final getInitialShortcut()Landroid/content/pm/ShortcutInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->initialShortcut:Landroid/content/pm/ShortcutInfo;

    return-object p0
.end method

.method public final getInitialStagePosition()I
    .locals 0

    iget p0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->initialStagePosition:I

    return p0
.end method

.method public final getInitialTaskId()I
    .locals 0

    iget p0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->initialTaskId:I

    return p0
.end method

.method public final getInitialUserId()I
    .locals 0

    iget p0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->initialUserId:I

    return p0
.end method

.method public final getItemInfo()Lcom/android/launcher3/model/data/ItemInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->itemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    return-object p0
.end method

.method public final getSecondPendingIntent()Landroid/app/PendingIntent;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->secondPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public final getSecondShortcut()Landroid/content/pm/ShortcutInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->secondShortcut:Landroid/content/pm/ShortcutInfo;

    return-object p0
.end method

.method public final getSecondTaskId()I
    .locals 0

    iget p0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->secondTaskId:I

    return p0
.end method

.method public final getSecondUserId()I
    .locals 0

    iget p0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->secondUserId:I

    return p0
.end method

.method public final getSplitEvent()Lcom/android/launcher3/logging/StatsLogManager$EventEnum;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->splitEvent:Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    return-object p0
.end method

.method public final getSplitLaunchType()I
    .locals 0

    iget p0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->splitLaunchType:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->splitLaunchType:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->initialTaskId:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->secondTaskId:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->initialPendingIntent:Landroid/app/PendingIntent;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/app/PendingIntent;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->secondPendingIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/app/PendingIntent;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->initialUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->secondUserId:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->initialShortcut:Landroid/content/pm/ShortcutInfo;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->secondShortcut:Landroid/content/pm/ShortcutInfo;

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->itemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->splitEvent:Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->initialStagePosition:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final setInitialPendingIntent(Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->initialPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public final setInitialShortcut(Landroid/content/pm/ShortcutInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->initialShortcut:Landroid/content/pm/ShortcutInfo;

    return-void
.end method

.method public final setInitialTaskId(I)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->initialTaskId:I

    return-void
.end method

.method public final setInitialUserId(I)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->initialUserId:I

    return-void
.end method

.method public final setItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->itemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    return-void
.end method

.method public final setSecondPendingIntent(Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->secondPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public final setSecondShortcut(Landroid/content/pm/ShortcutInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->secondShortcut:Landroid/content/pm/ShortcutInfo;

    return-void
.end method

.method public final setSecondTaskId(I)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->secondTaskId:I

    return-void
.end method

.method public final setSecondUserId(I)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->secondUserId:I

    return-void
.end method

.method public final setSplitEvent(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->splitEvent:Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    iget v0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->splitLaunchType:I

    iget v1, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->initialTaskId:I

    iget v2, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->secondTaskId:I

    iget-object v3, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->initialPendingIntent:Landroid/app/PendingIntent;

    iget-object v4, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->secondPendingIntent:Landroid/app/PendingIntent;

    iget v5, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->initialUserId:I

    iget v6, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->secondUserId:I

    iget-object v7, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->initialShortcut:Landroid/content/pm/ShortcutInfo;

    iget-object v8, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->secondShortcut:Landroid/content/pm/ShortcutInfo;

    iget-object v9, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->itemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v10, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->splitEvent:Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    iget p0, p0, Lcom/android/quickstep/util/SplitSelectDataHolder$SplitLaunchData;->initialStagePosition:I

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "SplitLaunchData(splitLaunchType="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", initialTaskId="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", secondTaskId="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", initialPendingIntent="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", secondPendingIntent="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", initialUserId="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", secondUserId="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", initialShortcut="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", secondShortcut="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", itemInfo="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", splitEvent="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", initialStagePosition="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
