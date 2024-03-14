.class final Lcom/android/launcher3/views/RecyclerViewFastScroller$1;
.super Landroid/util/Property;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-class v0, Ljava/lang/Integer;

    const-string v1, "width"

    invoke-direct {p0, v0, v1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-static {p1}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->a(Lcom/android/launcher3/views/RecyclerViewFastScroller;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/launcher3/views/RecyclerViewFastScroller;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->c(Lcom/android/launcher3/views/RecyclerViewFastScroller;I)V

    return-void
.end method
