.class public final synthetic Lcom/android/quickstep/b2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/android/systemui/shared/recents/ISystemUiProxy;

.field public final synthetic b:Lcom/android/wm/shell/pip/IPip;

.field public final synthetic c:Lcom/android/wm/shell/bubbles/IBubbles;

.field public final synthetic d:Lcom/android/wm/shell/splitscreen/ISplitScreen;

.field public final synthetic e:Lcom/android/wm/shell/onehanded/IOneHanded;

.field public final synthetic f:Lcom/android/wm/shell/transition/IShellTransitions;

.field public final synthetic g:Lcom/android/wm/shell/startingsurface/IStartingWindow;

.field public final synthetic h:Lcom/android/wm/shell/recents/IRecentTasks;

.field public final synthetic i:Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;

.field public final synthetic j:Lcom/android/wm/shell/back/IBackAnimation;

.field public final synthetic k:Lcom/android/wm/shell/desktopmode/IDesktopMode;

.field public final synthetic l:Lcom/android/systemui/unfold/progress/IUnfoldAnimation;

.field public final synthetic m:Lcom/android/wm/shell/draganddrop/IDragAndDrop;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shared/recents/ISystemUiProxy;Lcom/android/wm/shell/pip/IPip;Lcom/android/wm/shell/bubbles/IBubbles;Lcom/android/wm/shell/splitscreen/ISplitScreen;Lcom/android/wm/shell/onehanded/IOneHanded;Lcom/android/wm/shell/transition/IShellTransitions;Lcom/android/wm/shell/startingsurface/IStartingWindow;Lcom/android/wm/shell/recents/IRecentTasks;Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;Lcom/android/wm/shell/back/IBackAnimation;Lcom/android/wm/shell/desktopmode/IDesktopMode;Lcom/android/systemui/unfold/progress/IUnfoldAnimation;Lcom/android/wm/shell/draganddrop/IDragAndDrop;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/b2;->a:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    iput-object p2, p0, Lcom/android/quickstep/b2;->b:Lcom/android/wm/shell/pip/IPip;

    iput-object p3, p0, Lcom/android/quickstep/b2;->c:Lcom/android/wm/shell/bubbles/IBubbles;

    iput-object p4, p0, Lcom/android/quickstep/b2;->d:Lcom/android/wm/shell/splitscreen/ISplitScreen;

    iput-object p5, p0, Lcom/android/quickstep/b2;->e:Lcom/android/wm/shell/onehanded/IOneHanded;

    iput-object p6, p0, Lcom/android/quickstep/b2;->f:Lcom/android/wm/shell/transition/IShellTransitions;

    iput-object p7, p0, Lcom/android/quickstep/b2;->g:Lcom/android/wm/shell/startingsurface/IStartingWindow;

    iput-object p8, p0, Lcom/android/quickstep/b2;->h:Lcom/android/wm/shell/recents/IRecentTasks;

    iput-object p9, p0, Lcom/android/quickstep/b2;->i:Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;

    iput-object p10, p0, Lcom/android/quickstep/b2;->j:Lcom/android/wm/shell/back/IBackAnimation;

    iput-object p11, p0, Lcom/android/quickstep/b2;->k:Lcom/android/wm/shell/desktopmode/IDesktopMode;

    iput-object p12, p0, Lcom/android/quickstep/b2;->l:Lcom/android/systemui/unfold/progress/IUnfoldAnimation;

    iput-object p13, p0, Lcom/android/quickstep/b2;->m:Lcom/android/wm/shell/draganddrop/IDragAndDrop;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 14

    iget-object v0, p0, Lcom/android/quickstep/b2;->a:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    iget-object v1, p0, Lcom/android/quickstep/b2;->b:Lcom/android/wm/shell/pip/IPip;

    iget-object v2, p0, Lcom/android/quickstep/b2;->c:Lcom/android/wm/shell/bubbles/IBubbles;

    iget-object v3, p0, Lcom/android/quickstep/b2;->d:Lcom/android/wm/shell/splitscreen/ISplitScreen;

    iget-object v4, p0, Lcom/android/quickstep/b2;->e:Lcom/android/wm/shell/onehanded/IOneHanded;

    iget-object v5, p0, Lcom/android/quickstep/b2;->f:Lcom/android/wm/shell/transition/IShellTransitions;

    iget-object v6, p0, Lcom/android/quickstep/b2;->g:Lcom/android/wm/shell/startingsurface/IStartingWindow;

    iget-object v7, p0, Lcom/android/quickstep/b2;->h:Lcom/android/wm/shell/recents/IRecentTasks;

    iget-object v8, p0, Lcom/android/quickstep/b2;->i:Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;

    iget-object v9, p0, Lcom/android/quickstep/b2;->j:Lcom/android/wm/shell/back/IBackAnimation;

    iget-object v10, p0, Lcom/android/quickstep/b2;->k:Lcom/android/wm/shell/desktopmode/IDesktopMode;

    iget-object v11, p0, Lcom/android/quickstep/b2;->l:Lcom/android/systemui/unfold/progress/IUnfoldAnimation;

    iget-object v12, p0, Lcom/android/quickstep/b2;->m:Lcom/android/wm/shell/draganddrop/IDragAndDrop;

    move-object v13, p1

    check-cast v13, Lcom/android/quickstep/TouchInteractionService;

    invoke-static/range {v0 .. v13}, Lcom/android/quickstep/TouchInteractionService$TISBinder;->a(Lcom/android/systemui/shared/recents/ISystemUiProxy;Lcom/android/wm/shell/pip/IPip;Lcom/android/wm/shell/bubbles/IBubbles;Lcom/android/wm/shell/splitscreen/ISplitScreen;Lcom/android/wm/shell/onehanded/IOneHanded;Lcom/android/wm/shell/transition/IShellTransitions;Lcom/android/wm/shell/startingsurface/IStartingWindow;Lcom/android/wm/shell/recents/IRecentTasks;Lcom/android/systemui/shared/system/smartspace/ISysuiUnlockAnimationController;Lcom/android/wm/shell/back/IBackAnimation;Lcom/android/wm/shell/desktopmode/IDesktopMode;Lcom/android/systemui/unfold/progress/IUnfoldAnimation;Lcom/android/wm/shell/draganddrop/IDragAndDrop;Lcom/android/quickstep/TouchInteractionService;)V

    return-void
.end method
