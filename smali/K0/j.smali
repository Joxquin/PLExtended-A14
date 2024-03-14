.class public final synthetic LK0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/android/launcher3/graphics/SysUiScrim;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/graphics/SysUiScrim;I)V
    .locals 0

    iput p2, p0, LK0/j;->d:I

    iput-object p1, p0, LK0/j;->e:Lcom/android/launcher3/graphics/SysUiScrim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, LK0/j;->d:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object p0, p0, LK0/j;->e:Lcom/android/launcher3/graphics/SysUiScrim;

    invoke-static {p0}, Lcom/android/launcher3/graphics/SysUiScrim;->a(Lcom/android/launcher3/graphics/SysUiScrim;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
