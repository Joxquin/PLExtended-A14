.class public final Landroidx/recyclerview/widget/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/P;


# instance fields
.field public final a:Landroidx/recyclerview/widget/Z;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/Z;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/c;->a:Landroidx/recyclerview/widget/Z;

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/c;->a:Landroidx/recyclerview/widget/Z;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/Z;->notifyItemRangeRemoved(II)V

    return-void
.end method

.method public final b(II)V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/c;->a:Landroidx/recyclerview/widget/Z;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/Z;->notifyItemMoved(II)V

    return-void
.end method

.method public final c(II)V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/c;->a:Landroidx/recyclerview/widget/Z;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/Z;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public final d(IILjava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/c;->a:Landroidx/recyclerview/widget/Z;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/Z;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method
