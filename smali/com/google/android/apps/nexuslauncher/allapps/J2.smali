.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/J2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/J2;->a:I

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/J2;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/J2;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/J2;->b:Landroid/view/View;

    check-cast p0, Lcom/google/android/apps/nexuslauncher/allapps/TallCardWithImageNoIconRow;

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    sget v0, Lcom/google/android/apps/nexuslauncher/allapps/TallCardWithImageNoIconRow;->m:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/TallCardWithImageNoIconRow;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/TallCardWithImageNoIconRow;->f:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :goto_0
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/J2;->b:Landroid/view/View;

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    sget v0, Lcom/google/android/apps/nexuslauncher/allapps/TallCardWithImageNoIconRow;->m:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
