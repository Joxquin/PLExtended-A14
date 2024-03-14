.class public final synthetic Lcom/android/quickstep/logging/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/protobuf/E;


# direct methods
.method public synthetic constructor <init>(Lcom/google/protobuf/E;I)V
    .locals 0

    iput p2, p0, Lcom/android/quickstep/logging/i;->a:I

    iput-object p1, p0, Lcom/android/quickstep/logging/i;->b:Lcom/google/protobuf/E;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/quickstep/logging/i;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/quickstep/logging/i;->b:Lcom/google/protobuf/E;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    check-cast p1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->setContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/android/quickstep/logging/i;->b:Lcom/google/protobuf/E;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    check-cast p1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->setContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/android/quickstep/logging/i;->b:Lcom/google/protobuf/E;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    check-cast p1, Lcom/android/launcher3/views/ActivityContext;

    invoke-static {p0, p1}, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->d(Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;Lcom/android/launcher3/views/ActivityContext;)V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/android/quickstep/logging/i;->b:Lcom/google/protobuf/E;

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes$Builder;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes$Builder;->addItemAttributes(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
