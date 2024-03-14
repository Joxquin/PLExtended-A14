.class public final synthetic LJ0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/dragndrop/AddItemActivity;

.field public final synthetic c:Lcom/android/launcher3/icons/ComponentWithLabelAndIcon;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/dragndrop/AddItemActivity;Lcom/android/launcher3/icons/ComponentWithLabelAndIcon;I)V
    .locals 0

    iput p3, p0, LJ0/a;->a:I

    iput-object p1, p0, LJ0/a;->b:Lcom/android/launcher3/dragndrop/AddItemActivity;

    iput-object p2, p0, LJ0/a;->c:Lcom/android/launcher3/icons/ComponentWithLabelAndIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, LJ0/a;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, LJ0/a;->b:Lcom/android/launcher3/dragndrop/AddItemActivity;

    iget-object p0, p0, LJ0/a;->c:Lcom/android/launcher3/icons/ComponentWithLabelAndIcon;

    check-cast p0, Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;

    invoke-static {v0, p0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->d(Lcom/android/launcher3/dragndrop/AddItemActivity;Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;)Lcom/android/launcher3/model/WidgetItem;

    move-result-object p0

    return-object p0

    :goto_0
    iget-object v0, p0, LJ0/a;->b:Lcom/android/launcher3/dragndrop/AddItemActivity;

    iget-object p0, p0, LJ0/a;->c:Lcom/android/launcher3/icons/ComponentWithLabelAndIcon;

    check-cast p0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    invoke-static {v0, p0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->b(Lcom/android/launcher3/dragndrop/AddItemActivity;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)Lcom/android/launcher3/model/WidgetItem;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
