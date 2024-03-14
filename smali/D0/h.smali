.class public final synthetic LD0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/allapps/AllAppsTransitionController;

.field public final synthetic b:Lcom/android/launcher3/states/StateAnimationConfig;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/allapps/AllAppsTransitionController;Lcom/android/launcher3/states/StateAnimationConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD0/h;->a:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    iput-object p2, p0, LD0/h;->b:Lcom/android/launcher3/states/StateAnimationConfig;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LD0/h;->a:Lcom/android/launcher3/allapps/AllAppsTransitionController;

    iget-object p0, p0, LD0/h;->b:Lcom/android/launcher3/states/StateAnimationConfig;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->b(Lcom/android/launcher3/allapps/AllAppsTransitionController;Lcom/android/launcher3/states/StateAnimationConfig;Ljava/lang/Boolean;)V

    return-void
.end method
