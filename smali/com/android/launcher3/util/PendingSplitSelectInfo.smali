.class public final Lcom/android/launcher3/util/PendingSplitSelectInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mSource:Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

.field private final mStagePosition:I

.field private final mStagedTaskId:I


# direct methods
.method public constructor <init>(IILcom/android/launcher3/logging/StatsLogManager$EventEnum;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/util/PendingSplitSelectInfo;->mStagedTaskId:I

    iput p2, p0, Lcom/android/launcher3/util/PendingSplitSelectInfo;->mStagePosition:I

    iput-object p3, p0, Lcom/android/launcher3/util/PendingSplitSelectInfo;->mSource:Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    return-void
.end method


# virtual methods
.method public final getSource()Lcom/android/launcher3/logging/StatsLogManager$EventEnum;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/PendingSplitSelectInfo;->mSource:Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    return-object p0
.end method

.method public final getStagePosition()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/util/PendingSplitSelectInfo;->mStagePosition:I

    return p0
.end method

.method public final getStagedTaskId()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/util/PendingSplitSelectInfo;->mStagedTaskId:I

    return p0
.end method
