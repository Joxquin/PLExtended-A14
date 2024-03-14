.class public Lcom/google/android/systemui/smartspace/BcSmartspaceCardFlight;
.super LK2/n;
.source "SourceFile"


# instance fields
.field public e:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LK2/n;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, LK2/n;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const v0, 0x7f0a0175

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardFlight;->e:Landroid/widget/ImageView;

    return-void
.end method

.method public final s()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardFlight;->e:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-static {p0, v0}, LK2/t;->f(Landroid/view/View;I)V

    return-void
.end method

.method public final t(Landroid/app/smartspace/SmartspaceTarget;Ln1/d;LL2/d;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getBaseAction()Landroid/app/smartspace/SmartspaceAction;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    :goto_0
    const/4 p2, 0x0

    if-eqz p1, :cond_2

    const-string p3, "qrCodeBitmap"

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    iget-object p3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardFlight;->e:Landroid/widget/ImageView;

    if-nez p3, :cond_1

    const-string p1, "BcSmartspaceCardFlight"

    const-string p3, "No flight QR code view to update"

    invoke-static {p1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_1
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardFlight;->e:Landroid/widget/ImageView;

    invoke-static {p0, p2}, LK2/t;->f(Landroid/view/View;I)V

    const/4 p0, 0x1

    return p0

    :cond_2
    return p2
.end method

.method public final u(I)V
    .locals 0

    return-void
.end method
