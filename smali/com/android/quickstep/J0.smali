.class public final synthetic Lcom/android/quickstep/J0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/android/launcher3/util/SettingsCache;

.field public final synthetic f:Landroid/net/Uri;

.field public final synthetic g:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/SettingsCache;Landroid/net/Uri;Lcom/android/quickstep/I0;I)V
    .locals 0

    iput p4, p0, Lcom/android/quickstep/J0;->d:I

    iput-object p1, p0, Lcom/android/quickstep/J0;->e:Lcom/android/launcher3/util/SettingsCache;

    iput-object p2, p0, Lcom/android/quickstep/J0;->f:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/quickstep/J0;->g:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/android/quickstep/J0;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/quickstep/J0;->e:Lcom/android/launcher3/util/SettingsCache;

    iget-object v1, p0, Lcom/android/quickstep/J0;->f:Landroid/net/Uri;

    iget-object p0, p0, Lcom/android/quickstep/J0;->g:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    invoke-static {v0, v1, p0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->e(Lcom/android/launcher3/util/SettingsCache;Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/quickstep/J0;->e:Lcom/android/launcher3/util/SettingsCache;

    iget-object v1, p0, Lcom/android/quickstep/J0;->f:Landroid/net/Uri;

    iget-object p0, p0, Lcom/android/quickstep/J0;->g:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    invoke-static {v0, v1, p0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->f(Lcom/android/launcher3/util/SettingsCache;Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/android/quickstep/J0;->e:Lcom/android/launcher3/util/SettingsCache;

    iget-object v1, p0, Lcom/android/quickstep/J0;->f:Landroid/net/Uri;

    iget-object p0, p0, Lcom/android/quickstep/J0;->g:Lcom/android/launcher3/util/SettingsCache$OnChangeListener;

    invoke-static {v0, v1, p0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->a(Lcom/android/launcher3/util/SettingsCache;Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
