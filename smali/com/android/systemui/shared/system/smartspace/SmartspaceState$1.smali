.class final synthetic Lcom/android/systemui/shared/system/smartspace/SmartspaceState$1;
.super Lkotlin/jvm/internal/PropertyReference1Impl;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/shared/system/smartspace/SmartspaceState$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/shared/system/smartspace/SmartspaceState$1;

    invoke-direct {v0}, Lcom/android/systemui/shared/system/smartspace/SmartspaceState$1;-><init>()V

    sput-object v0, Lcom/android/systemui/shared/system/smartspace/SmartspaceState$1;->INSTANCE:Lcom/android/systemui/shared/system/smartspace/SmartspaceState$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-string v0, "getJavaClass(Ljava/lang/Object;)Ljava/lang/Class;"

    const/4 v1, 0x1

    const-class v2, Ll3/a;

    const-string v3, "javaClass"

    invoke-direct {p0, v2, v3, v0, v1}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method
