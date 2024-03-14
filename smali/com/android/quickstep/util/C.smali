.class public final synthetic Lcom/android/quickstep/util/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/OnAlarmListener;


# instance fields
.field public final synthetic d:Lcom/android/quickstep/util/MotionPauseDetector;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/util/MotionPauseDetector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/C;->d:Lcom/android/quickstep/util/MotionPauseDetector;

    return-void
.end method


# virtual methods
.method public final onAlarm(Lcom/android/launcher3/Alarm;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/C;->d:Lcom/android/quickstep/util/MotionPauseDetector;

    invoke-static {p0, p1}, Lcom/android/quickstep/util/MotionPauseDetector;->a(Lcom/android/quickstep/util/MotionPauseDetector;Lcom/android/launcher3/Alarm;)V

    return-void
.end method
