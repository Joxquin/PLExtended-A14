.class final Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$2;
.super Landroidx/recyclerview/widget/q0;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$2;->this$0:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/q0;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView$2;->this$0:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->updateHeaderScroll(I)V

    return-void
.end method
