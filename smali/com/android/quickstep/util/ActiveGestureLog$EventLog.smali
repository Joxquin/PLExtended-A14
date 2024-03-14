.class public Lcom/android/quickstep/util/ActiveGestureLog$EventLog;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final eventEntries:Ljava/util/List;

.field protected final logId:I


# direct methods
.method private constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/ActiveGestureLog$EventLog;->eventEntries:Ljava/util/List;

    .line 4
    iput p1, p0, Lcom/android/quickstep/util/ActiveGestureLog$EventLog;->logId:I

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/quickstep/util/ActiveGestureLog$EventLog;-><init>(I)V

    return-void
.end method
