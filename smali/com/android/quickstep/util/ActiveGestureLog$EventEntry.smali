.class public Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private duplicateCount:I

.field private event:Ljava/lang/String;

.field private extras:F

.field private gestureEvent:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

.field private mCompoundString:Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

.field private time:J

.field private type:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;)I
    .locals 0

    iget p0, p0, Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;->duplicateCount:I

    return p0
.end method

.method public static bridge synthetic b(Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;->event:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;->extras:F

    return p0
.end method

.method public static bridge synthetic d(Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;)Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;->gestureEvent:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;->mCompoundString:Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;->time:J

    return-wide v0
.end method

.method public static bridge synthetic g(Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;)I
    .locals 0

    iget p0, p0, Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;->type:I

    return p0
.end method

.method public static bridge synthetic h(Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;I)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;->duplicateCount:I

    return-void
.end method

.method public static bridge synthetic i(Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;ILjava/lang/String;FLcom/android/quickstep/util/ActiveGestureLog$CompoundString;Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;->update(ILjava/lang/String;FLcom/android/quickstep/util/ActiveGestureLog$CompoundString;Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;)V

    return-void
.end method

.method private update(ILjava/lang/String;FLcom/android/quickstep/util/ActiveGestureLog$CompoundString;Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;->type:I

    iput-object p2, p0, Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;->event:Ljava/lang/String;

    iput p3, p0, Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;->extras:F

    iput-object p4, p0, Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;->mCompoundString:Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    iput-object p5, p0, Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;->gestureEvent:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;->time:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;->duplicateCount:I

    return-void
.end method


# virtual methods
.method public getGestureEvent()Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/ActiveGestureLog$EventEntry;->gestureEvent:Lcom/android/quickstep/util/ActiveGestureErrorDetector$GestureEvent;

    return-object p0
.end method
