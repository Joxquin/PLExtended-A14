.class final Lcom/android/launcher3/model/LoaderMemoryLogger$LogEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final mLogLevel:I

.field protected final mLogString:Ljava/lang/String;

.field protected final mLogTag:Ljava/lang/String;

.field protected final mStackStrace:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher3/model/LoaderMemoryLogger$LogEntry;->mLogLevel:I

    const-string v0, "BgDataModel"

    iput-object v0, p0, Lcom/android/launcher3/model/LoaderMemoryLogger$LogEntry;->mLogTag:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/launcher3/model/LoaderMemoryLogger$LogEntry;->mLogString:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/model/LoaderMemoryLogger$LogEntry;->mStackStrace:Ljava/lang/Exception;

    return-void
.end method
