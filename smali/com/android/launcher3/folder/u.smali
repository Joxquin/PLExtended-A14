.class public final synthetic Lcom/android/launcher3/folder/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/folder/u;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/folder/u;->a:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    sget p0, Lcom/android/launcher3/folder/FolderPagedView;->d:I

    const/4 p0, 0x0

    return p0

    :goto_0
    check-cast p1, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    sget p0, Lcom/android/launcher3/folder/FolderPagedView;->d:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
