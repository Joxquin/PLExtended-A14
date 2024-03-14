.class public final LF2/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic d:LF2/D;


# direct methods
.method public constructor <init>(LF2/D;)V
    .locals 0

    iput-object p1, p0, LF2/B;->d:LF2/D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7

    iget-object p1, p0, LF2/B;->d:LF2/D;

    const/4 v0, 0x0

    if-gez p3, :cond_1

    iget-object p1, p1, LF2/D;->h:Lk/C0;

    invoke-virtual {p1}, Lk/C0;->b()Z

    move-result v1

    if-nez v1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lk/C0;->f:Lk/s0;

    invoke-virtual {p1}, Landroid/widget/ListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    iget-object v1, p0, LF2/B;->d:LF2/D;

    invoke-static {v1, p1}, LF2/D;->a(LF2/D;Ljava/lang/Object;)V

    iget-object p1, p0, LF2/B;->d:LF2/D;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    if-eqz v1, :cond_7

    if-eqz p2, :cond_3

    if-gez p3, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    goto :goto_5

    :cond_3
    :goto_2
    iget-object p1, p0, LF2/B;->d:LF2/D;

    iget-object p1, p1, LF2/D;->h:Lk/C0;

    invoke-virtual {p1}, Lk/C0;->b()Z

    move-result p2

    if-nez p2, :cond_4

    move-object p2, v0

    goto :goto_3

    :cond_4
    iget-object p1, p1, Lk/C0;->f:Lk/s0;

    invoke-virtual {p1}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object p1

    move-object p2, p1

    :goto_3
    iget-object p1, p0, LF2/B;->d:LF2/D;

    iget-object p1, p1, LF2/D;->h:Lk/C0;

    invoke-virtual {p1}, Lk/C0;->b()Z

    move-result p3

    if-nez p3, :cond_5

    const/4 p1, -0x1

    goto :goto_4

    :cond_5
    iget-object p1, p1, Lk/C0;->f:Lk/s0;

    invoke-virtual {p1}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result p1

    :goto_4
    move p3, p1

    iget-object p1, p0, LF2/B;->d:LF2/D;

    iget-object p1, p1, LF2/D;->h:Lk/C0;

    invoke-virtual {p1}, Lk/C0;->b()Z

    move-result p4

    if-nez p4, :cond_6

    const-wide/high16 p4, -0x8000000000000000L

    goto :goto_1

    :cond_6
    iget-object p1, p1, Lk/C0;->f:Lk/s0;

    invoke-virtual {p1}, Landroid/widget/ListView;->getSelectedItemId()J

    move-result-wide p4

    goto :goto_1

    :goto_5
    iget-object p1, p0, LF2/B;->d:LF2/D;

    iget-object p1, p1, LF2/D;->h:Lk/C0;

    iget-object v2, p1, Lk/C0;->f:Lk/s0;

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_7
    iget-object p0, p0, LF2/B;->d:LF2/D;

    iget-object p0, p0, LF2/D;->h:Lk/C0;

    invoke-virtual {p0}, Lk/C0;->dismiss()V

    return-void
.end method
