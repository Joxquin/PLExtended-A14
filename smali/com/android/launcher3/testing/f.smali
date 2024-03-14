.class public final synthetic Lcom/android/launcher3/testing/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/testing/f;->a:I

    iput-object p2, p0, Lcom/android/launcher3/testing/f;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/android/launcher3/testing/f;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/launcher3/testing/f;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/testing/shared/HotseatCellCenterRequest;

    check-cast p1, Lcom/android/launcher3/Launcher;

    invoke-static {p0, p1}, Lcom/android/launcher3/testing/TestInformationHandler;->m(Lcom/android/launcher3/testing/shared/HotseatCellCenterRequest;Lcom/android/launcher3/Launcher;)Landroid/graphics/Point;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lcom/android/launcher3/testing/f;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/testing/shared/WorkspaceCellCenterRequest;

    check-cast p1, Lcom/android/launcher3/Launcher;

    invoke-static {p0, p1}, Lcom/android/launcher3/testing/TestInformationHandler;->a(Lcom/android/launcher3/testing/shared/WorkspaceCellCenterRequest;Lcom/android/launcher3/Launcher;)Landroid/graphics/Point;

    move-result-object p0

    return-object p0

    :goto_0
    iget-object p0, p0, Lcom/android/launcher3/testing/f;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/testing/TestInformationHandler;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/android/launcher3/testing/TestInformationHandler;->n(Lcom/android/launcher3/testing/TestInformationHandler;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
