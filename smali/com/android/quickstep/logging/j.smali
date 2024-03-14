.class public final synthetic Lcom/android/quickstep/logging/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;I)V
    .locals 0

    iput p2, p0, Lcom/android/quickstep/logging/j;->a:I

    iput-object p1, p0, Lcom/android/quickstep/logging/j;->b:Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/quickstep/logging/j;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/quickstep/logging/j;->b:Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;

    check-cast p1, Lcom/android/launcher3/logger/LauncherAtom$ToState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->setToLabelState(Lcom/android/launcher3/logger/LauncherAtom$ToState;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/android/quickstep/logging/j;->b:Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;

    check-cast p1, Lcom/android/launcher3/logger/LauncherAtom$FromState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->setFromLabelState(Lcom/android/launcher3/logger/LauncherAtom$FromState;)V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/android/quickstep/logging/j;->b:Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->setLabelInfo(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
