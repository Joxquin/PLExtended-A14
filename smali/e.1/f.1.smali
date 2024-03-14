.class public final Le/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic d:Le/k;

.field public final synthetic e:Le/h;


# direct methods
.method public constructor <init>(Le/h;Le/k;)V
    .locals 0

    iput-object p1, p0, Le/f;->e:Le/h;

    iput-object p2, p0, Le/f;->d:Le/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Le/f;->e:Le/h;

    iget-object p1, p1, Le/h;->o:Landroid/content/DialogInterface$OnClickListener;

    iget-object p2, p0, Le/f;->d:Le/k;

    iget-object p2, p2, Le/k;->b:Le/F;

    invoke-interface {p1, p2, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    iget-object p1, p0, Le/f;->e:Le/h;

    iget-boolean p1, p1, Le/h;->t:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Le/f;->d:Le/k;

    iget-object p0, p0, Le/k;->b:Le/F;

    invoke-virtual {p0}, Le/F;->dismiss()V

    :cond_0
    return-void
.end method
