.class Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatImpressionLogger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger;


# instance fields
.field private mAboveKeyboard:Z

.field private mInstanceId:Lcom/android/launcher3/logging/InstanceId;

.field private mLauncherState:Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger$State;

.field private mQueryLength:I

.field private mResultSource:I

.field private mResultType:I

.field private mUid:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/android/quickstep/logging/StatsLogCompatManager;->b()Lcom/android/launcher3/logging/InstanceId;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatImpressionLogger;->mInstanceId:Lcom/android/launcher3/logging/InstanceId;

    .line 4
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger$State;->UNKNOWN:Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger$State;

    iput-object v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatImpressionLogger;->mLauncherState:Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger$State;

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatImpressionLogger;->mQueryLength:I

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatImpressionLogger;->mAboveKeyboard:Z

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatImpressionLogger;-><init>()V

    return-void
.end method


# virtual methods
.method public log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V
    .locals 11

    invoke-static {}, Lcom/android/quickstep/logging/StatsLogCompatManager;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Ljava/lang/Enum;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/android/launcher3/logging/StatsLogManager$EventEnum;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatImpressionLogger;->mInstanceId:Lcom/android/launcher3/logging/InstanceId;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "InstanceId:%s "

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ImpressionEvent:%s "

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatImpressionLogger;->mLauncherState:Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger$State;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "\n\tLauncherState = %s "

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatImpressionLogger;->mQueryLength:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "\tQueryLength = %s "

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatImpressionLogger;->mResultType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatImpressionLogger;->mAboveKeyboard:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget v3, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatImpressionLogger;->mUid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatImpressionLogger;->mResultSource:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "\n\t ResultType = %s is_above_keyboard = %s uid = %s result_source = %s"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "StatsImpressionLog"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v2, 0x2cc

    invoke-interface {p1}, Lcom/android/launcher3/logging/StatsLogManager$EventEnum;->getId()I

    move-result v3

    iget-object p1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatImpressionLogger;->mInstanceId:Lcom/android/launcher3/logging/InstanceId;

    invoke-virtual {p1}, Lcom/android/launcher3/logging/InstanceId;->getId()I

    move-result v4

    iget-object p1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatImpressionLogger;->mLauncherState:Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger$State;

    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger$State;->getLauncherState()I

    move-result v5

    iget v6, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatImpressionLogger;->mQueryLength:I

    iget v7, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatImpressionLogger;->mResultType:I

    iget-boolean v8, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatImpressionLogger;->mAboveKeyboard:Z

    iget v9, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatImpressionLogger;->mUid:I

    iget v10, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatImpressionLogger;->mResultSource:I

    invoke-static/range {v2 .. v10}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(IIIIIIZII)V

    return-void
.end method

.method public withAboveKeyboard(Z)Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger;
    .locals 0

    iput-boolean p1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatImpressionLogger;->mAboveKeyboard:Z

    return-object p0
.end method

.method public withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger;
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatImpressionLogger;->mInstanceId:Lcom/android/launcher3/logging/InstanceId;

    return-object p0
.end method

.method public withQueryLength(I)Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger;
    .locals 0

    iput p1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatImpressionLogger;->mQueryLength:I

    return-object p0
.end method

.method public withResultSource(I)Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger;
    .locals 0

    iput p1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatImpressionLogger;->mResultSource:I

    return-object p0
.end method

.method public withResultType(I)Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger;
    .locals 0

    iput p1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatImpressionLogger;->mResultType:I

    return-object p0
.end method

.method public withState(Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger$State;)Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger;
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatImpressionLogger;->mLauncherState:Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger$State;

    return-object p0
.end method

.method public withUid(I)Lcom/android/launcher3/logging/StatsLogManager$StatsImpressionLogger;
    .locals 0

    iput p1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatImpressionLogger;->mUid:I

    return-object p0
.end method
