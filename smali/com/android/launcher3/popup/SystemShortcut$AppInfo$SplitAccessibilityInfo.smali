.class public final Lcom/android/launcher3/popup/SystemShortcut$AppInfo$SplitAccessibilityInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final containsMultipleTasks:Z

.field public final nodeId:I

.field public final taskTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(ZLjava/lang/CharSequence;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/launcher3/popup/SystemShortcut$AppInfo$SplitAccessibilityInfo;->containsMultipleTasks:Z

    iput-object p2, p0, Lcom/android/launcher3/popup/SystemShortcut$AppInfo$SplitAccessibilityInfo;->taskTitle:Ljava/lang/CharSequence;

    iput p3, p0, Lcom/android/launcher3/popup/SystemShortcut$AppInfo$SplitAccessibilityInfo;->nodeId:I

    return-void
.end method
