.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/c3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/c3;->a:I

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/c3;->b:Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/c3;->a:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/c3;->b:Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;

    check-cast p1, Ljava/lang/Boolean;

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->x:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->w:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->x:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/c3;->b:Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;

    check-cast p1, Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->w:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/c3;->b:Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;

    check-cast p1, Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->v:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [I

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return-void

    :goto_0
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/c3;->b:Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;

    check-cast p1, Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView;->w:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->m:Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
