.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/A1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/A1;->a:I

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/A1;->b:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/A1;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/A1;->b:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    sget v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;->r:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;->j:Landroid/widget/TextView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :goto_0
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/A1;->b:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultBigIconRow;->k(Ljava/lang/CharSequence;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
