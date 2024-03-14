.class final Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$PendingUpdate;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final changedViews:Lcom/android/launcher3/util/IntSet;

.field public providerInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field public remoteViews:Landroid/widget/RemoteViews;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$PendingUpdate;->changedViews:Lcom/android/launcher3/util/IntSet;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/uioverrides/QuickstepWidgetHolder$PendingUpdate;-><init>()V

    return-void
.end method
