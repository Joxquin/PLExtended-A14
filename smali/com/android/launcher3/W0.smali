.class public final synthetic Lcom/android/launcher3/W0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/Workspace;

.field public final synthetic e:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

.field public final synthetic f:Lcom/android/launcher3/CellLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/W0;->d:Lcom/android/launcher3/Workspace;

    iput-object p2, p0, Lcom/android/launcher3/W0;->e:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    iput-object p3, p0, Lcom/android/launcher3/W0;->f:Lcom/android/launcher3/CellLayout;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/W0;->d:Lcom/android/launcher3/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/W0;->e:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    iget-object p0, p0, Lcom/android/launcher3/W0;->f:Lcom/android/launcher3/CellLayout;

    sget v2, Lcom/android/launcher3/Workspace;->d:I

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1, p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->showForWidget(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;)V

    :cond_0
    return-void
.end method
