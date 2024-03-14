.class final synthetic Lcom/android/launcher3/responsive/HotseatSpecs$Companion$create$specs$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lm3/p;


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/responsive/HotseatSpecs$Companion$create$specs$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/responsive/HotseatSpecs$Companion$create$specs$1;

    invoke-direct {v0}, Lcom/android/launcher3/responsive/HotseatSpecs$Companion$create$specs$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/responsive/HotseatSpecs$Companion$create$specs$1;->INSTANCE:Lcom/android/launcher3/responsive/HotseatSpecs$Companion$create$specs$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x2

    const-class v2, Lcom/android/launcher3/responsive/HotseatSpec;

    const-string v3, "<init>"

    const-string v4, "<init>(Landroid/content/res/TypedArray;Ljava/util/Map;)V"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/content/res/TypedArray;

    check-cast p2, Ljava/util/Map;

    const-string p0, "p0"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "p1"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/launcher3/responsive/HotseatSpec;

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/responsive/HotseatSpec;-><init>(Landroid/content/res/TypedArray;Ljava/util/Map;)V

    return-object p0
.end method
