////////////////////////////////////////////////////////////////////////////////
//            Copyright (C) 2004-2011 by The Allacrost Project
//            Copyright (C) 2012-2018 by Bertram (Valyria Tear)
//                         All Rights Reserved
//
// This code is licensed under the GNU GPL version 2. It is free software and
// you may modify it and/or redistribute it under the terms of this license.
// See https://www.gnu.org/copyleft/gpl.html for details.
////////////////////////////////////////////////////////////////////////////////

#ifndef __BATTLE_DEFEAT_HEADER__
#define __BATTLE_DEFEAT_HEADER__

#include "battle_finish.h"

#include "common/gui/menu_window.h"
#include "common/gui/option.h"
#include "common/gui/textbox.h"

namespace vt_battle
{

namespace private_battle
{

//! \brief Enums for the various states that the FinishWindow class may be in
enum DEFEAT_STATE {
    DEFEAT_INVALID = -1,
    DEFEAT_SELECT  = 0, //!< Player selects what to do after defeat (go to main menu, exit game, etc.)
    DEFEAT_CONFIRM = 1, //!< Player confirms defeat selection
    DEFEAT_END     = 3, //!< Short sequence of hiding finish GUI objects
};

/** ****************************************************************************
*** \brief Represents a collection of GUI objects drawn when the player loses the battle
***
*** This class assists the FinishSupervisor class. It is only utilized when the
*** player's characters are defeated in battle and presents the player with a
*** number of options.
*** ***************************************************************************/
class BattleDefeat : public BattleFinish
{
public:
    BattleDefeat();

    virtual ~BattleDefeat();

    virtual void Initialize() override;

    //! \brief Processes user input and updates the GUI controls
    virtual void Update() override;

    //! \brief Draws the finish window and GUI contents to the screen
    virtual void Draw() override;

private:
    //! \brief A reference to where the state of the finish GUI menus is maintained
    DEFEAT_STATE _state;

    //! \brief Used to announce the battle's outcome
    vt_gui::TextBox _outcome_text;

    //! \brief The window that the defeat message and options are displayed upon
    vt_gui::MenuWindow _options_window;

    //! \brief The window that the defeat message and options are displayed upon
    vt_gui::MenuWindow _tooltip_window;

    //! \brief The list of options that the player may choose from when they lose the battle
    vt_gui::OptionBox _defeat_options;

    //! \brief A simple "yes/no" confirmation to the selected option
    vt_gui::OptionBox _confirm_options;

    //! \brief Tooltip text explaining the currently selected option
    vt_gui::TextBox _tooltip;

    //! \brief Changes the text displayed by the tooltip based on the current state and selected option
    void _SetTooltipText();
};

} // namespace private_battle

} // namespace vt_battle

#endif // __BATTLE_DEFEAT_HEADER__
