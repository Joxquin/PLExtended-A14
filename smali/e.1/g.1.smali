.class public final Le/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic d:Landroidx/appcompat/app/AlertController$RecycleListView;

.field public final synthetic e:Le/k;

.field public final synthetic f:Le/h;


# direct methods
.method public constructor <init>(Le/h;Landroidx/appcompat/app/AlertController$RecycleListView;Le/k;)V
    .locals 0

    iput-object p1, p0, Le/g;->f:Le/h;

    iput-object p2, p0, Le/g;->d:Landroidx/appcompat/app/AlertController$RecycleListView;

    iput-object p3, p0, Le/g;->e:Le/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Le/g;->f:Le/h;

    iget-object p1, p1, Le/h;->r:[Z

    if-eqz p1, :cond_0

    iget-object p2, p0, Le/g;->d:Landroidx/appcompat/app/AlertController$RecycleListView;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result p2

    aput-boolean p2, p1, p3

    :cond_0
    iget-object p1, p0, Le/g;->f:Le/h;

    iget-object p1, p1, Le/h;->v:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object p2, p0, Le/g;->e:Le/k;

    iget-object p2, p2, Le/k;->b:Le/F;

    iget-object p0, p0, Le/g;->d:Landroidx/appcompat/app/AlertController$RecycleListView;

    invoke-virtual {p0, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result p0

    invoke-interface {p1, p2, p3, p0}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    return-void
.end method
