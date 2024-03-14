.class final Lcom/android/launcher3/views/SpringRelativeLayout$ProxyEdgeEffectFactory;
.super Landroidx/recyclerview/widget/d0;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/views/SpringRelativeLayout;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/views/SpringRelativeLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/views/SpringRelativeLayout$ProxyEdgeEffectFactory;->this$0:Lcom/android/launcher3/views/SpringRelativeLayout;

    invoke-direct {p0}, Landroidx/recyclerview/widget/d0;-><init>()V

    return-void
.end method


# virtual methods
.method public final createEdgeEffect(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/widget/EdgeEffect;
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    new-instance p1, Lcom/android/launcher3/views/SpringRelativeLayout$EdgeEffectProxy;

    iget-object p0, p0, Lcom/android/launcher3/views/SpringRelativeLayout$ProxyEdgeEffectFactory;->this$0:Lcom/android/launcher3/views/SpringRelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p0}, Lcom/android/launcher3/views/SpringRelativeLayout;->a(Lcom/android/launcher3/views/SpringRelativeLayout;)Landroid/widget/EdgeEffect;

    move-result-object v0

    invoke-direct {p1, p0, p2, v0}, Lcom/android/launcher3/views/SpringRelativeLayout$EdgeEffectProxy;-><init>(Lcom/android/launcher3/views/SpringRelativeLayout;Landroid/content/Context;Landroid/widget/EdgeEffect;)V

    return-object p1

    :cond_0
    new-instance p0, Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    return-object p0
.end method
