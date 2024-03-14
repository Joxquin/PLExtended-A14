.class public final synthetic LL0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;I)V
    .locals 0

    iput p2, p0, LL0/c;->d:I

    iput-object p1, p0, LL0/c;->e:Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget p1, p0, LL0/c;->d:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, LL0/c;->e:Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;

    invoke-static {p0}, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->a(Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;)V

    return-void

    :goto_0
    iget-object p0, p0, LL0/c;->e:Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;

    invoke-static {p0}, Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;->b(Lcom/android/launcher3/hybridhotseat/HotseatEduDialog;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
