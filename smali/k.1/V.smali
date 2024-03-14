.class public final Lk/V;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic d:Lk/X;


# direct methods
.method public constructor <init>(Lk/X;)V
    .locals 0

    iput-object p1, p0, Lk/V;->d:Lk/X;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    iget-object p1, p0, Lk/V;->d:Lk/X;

    iget-object p1, p1, Lk/X;->H:Lk/b0;

    invoke-virtual {p1, p3}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object p1, p0, Lk/V;->d:Lk/X;

    iget-object p1, p1, Lk/X;->H:Lk/b0;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lk/V;->d:Lk/X;

    iget-object p4, p1, Lk/X;->H:Lk/b0;

    iget-object p1, p1, Lk/X;->E:Landroid/widget/ListAdapter;

    invoke-interface {p1, p3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    invoke-virtual {p4, p2, p3, v0, v1}, Landroid/widget/Spinner;->performItemClick(Landroid/view/View;IJ)Z

    :cond_0
    iget-object p0, p0, Lk/V;->d:Lk/X;

    invoke-virtual {p0}, Lk/C0;->dismiss()V

    return-void
.end method
